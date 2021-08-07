#!/usr/bin/env ruby

require 'optparse'

BANNER = "
 ██▓███  ▓█████  ██▀███   ▄████▄   ▒█████  ▓█████▄ ▓█████  ██▀███
▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒▒██▀ ▀█  ▒██▒  ██▒▒██▀ ██▌▓█   ▀ ▓██ ▒ ██▒
▓██░ ██▓▒▒███   ▓██ ░▄█ ▒▒▓█    ▄ ▒██░  ██▒░██   █▌▒███   ▓██ ░▄█ ▒
▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  ▒▓▓▄ ▄██▒▒██   ██░░▓█▄   ▌▒▓█  ▄ ▒██▀▀█▄
▒██▒ ░  ░░▒████▒░██▓ ▒██▒▒ ▓███▀ ░░ ████▓▒░░▒████▓ ░▒████▒░██▓ ▒██▒
▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░░ ▒░▒░▒░  ▒▒▓  ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░
░▒ ░      ░ ░  ░  ░▒ ░ ▒░  ░  ▒     ░ ▒ ▒░  ░ ▒  ▒  ░ ░  ░  ░▒ ░ ▒░
░░          ░     ░░   ░ ░        ░ ░ ░ ▒   ░ ░  ░    ░     ░░   ░
            ░  ░   ░     ░ ░          ░ ░     ░       ░  ░   ░
"

ENCODINGS = {
  " " => "%20", "!" => "%21", "\"" => "%22", "#" => "%23", "$" => "%24",
  "%" => "%25", "&" => "%26", "'" => "%27", "(" => "%28", ")" => "%29",
  "*" => "%2A", "+" => "%2B", "," => "%2C", "-" => "%2D", "." => "%2E",
  "/" => "%2F", "0" => "%30", "1" => "%31", "2" => "%32", "3" => "%33",
  "4" => "%34", "5" => "%35", "6" => "%36", "7" => "%37", "8" => "%38",
  "9" => "%39", ":" => "%3A", ";" => "%3B", "<" => "%3C", "=" => "%3D",
  ">" => "%3E", "?" => "%3F", "@" => "%40", "A" => "%41", "B" => "%42",
  "C" => "%43", "D" => "%44", "E" => "%45", "F" => "%46", "G" => "%47",
  "H" => "%48", "I" => "%49", "J" => "%4A", "K" => "%4B", "L" => "%4C",
  "M" => "%4D", "N" => "%4E", "O" => "%4F", "P" => "%50", "Q" => "%51",
  "R" => "%52", "S" => "%53", "T" => "%54", "U" => "%55", "V" => "%56",
  "W" => "%57", "X" => "%58", "Y" => "%59", "Z" => "%5A", "[" => "%5B",
  "\\" => "%5C", "]" => "%5D", "^" => "%5E", "_" => "%5F", "`" => "%60",
  "a" => "%61", "b" => "%62", "c" => "%63", "d" => "%64", "e" => "%65",
  "f" => "%66", "g" => "%67", "h" => "%68", "i" => "%69", "j" => "%6A",
  "k" => "%6B", "l" => "%6C", "m" => "%6D", "n" => "%6E", "o" => "%6F",
  "p" => "%70", "q" => "%71", "r" => "%72", "s" => "%73", "t" => "%74",
  "u" => "%75", "v" => "%76", "w" => "%77", "x" => "%78", "y" => "%79",
  "z" => "%7A", "{" => "%7B", "|" => "%7C", "}" => "%7D", "~" => "%7E"
}

Options = Struct.new(:url, :encode, :decode)

class Parser

  HELP = "
  Usage:
    percoder [OPTION]... [STRING]...
    Perform percentage encoding on path names or query strings.
  "

  def self.parse(options)
    args = Options.new("world")

    opt_parser = OptionParser.new do |opts|
      opts.banner = HELP

      # TODO: Handle OptionParser::MissingArgument and format error output for opts
      opts.on("-uURL", "--url=URL", "A url to append the encoded path/params to") do |u|
        args.url = u
        puts "Hello world #{u}"
      end

      opts.on("-eENCODE", "--encode ENCODE", "A string containing the path/params you wish to be encoded") do |e|
        args.encode = e
        decoded = []
        args.encode.split("").each do |char|
          decoded.append(ENCODINGS[char])
        end
        puts decoded.join('')
      end

      opts.on("-dDECODE", "--decode DECODE", "A string containing the path/params you wish to be decoded") do |d|
        args.decode = d
      end

      opts.on("-h", "--help", "Show help menu") do
        puts opts
        exit
      end
    end

    opt_parser.parse!(options)
    return args
  end
end

options = Parser.parse(ARGV)
