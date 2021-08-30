CREATE TABLE `tutorial`(
    `id` BIGINT(20) NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `author_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`)
);

ALTER TABLE `tutorial`
    ADD CONSTRAINT `author_tutorial_fk`
    FOREIGN KEY (`author_id`)
    REFERENCES `author` (`id`)
    ON DELETE CASCADE;