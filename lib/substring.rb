class Substring

    def substrings word, subs

        wordMap = {}

        subs.each do |s|
            count = 0
            loopWord = word.downcase
            while loopWord.include?(s.downcase)
                count += 1
                loopWord = loopWord.sub(s.downcase,'')
            end
            if count > 0
                wordMap[s] = count
            end
        end
        return wordMap
    end
end