ALTER TABLE `Recordings` MODIFY `recordedFileFileSize` int(11) unsigned DEFAULT NULL COMMENT '[FSO:keepExtension]';
ALTER TABLE `Locutions` MODIFY `encodedFileFileSize` int(11) unsigned DEFAULT NULL COMMENT '[FSO:keepExtension]';