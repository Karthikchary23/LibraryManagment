

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(60) NOT NULL,
  `password` varchar(150) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `admin` (`adminId`, `adminName`, `password`, `username`, `email`, `photo`) VALUES

(1, 'KARTHIK CHARY', '123456', 'lingojikarthik', 'lingojikarthikchary@gmail.com', 'posts-images/153139155541.jpeg');



CREATE TABLE `books` (
  `bookId` int(11) NOT NULL,
  `bookTitle` varchar(150) NOT NULL,
  `author` varchar(60) NOT NULL,
  `ISBN` varchar(30) NOT NULL,
  `bookCopies` varchar(10) NOT NULL,
  `publisherName` varchar(60) NOT NULL,
  `available` varchar(10) NOT NULL,
  `categories` varchar(30) NOT NULL,
  `callNumber` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `books` (`bookId`, `bookTitle`, `author`, `ISBN`, `bookCopies`, `publisherName`, `available`, `categories`, `callNumber`) VALUES
(5, 'How to Become a Billionaire', 'James Flitch', '1900-124-3242', '30', 'Robert Muller', 'YES', 'Morals', '0902334'),
(6, 'Oliver Twist', 'Charles Dickey', '123-423-4-13', '12', 'African Books.Inc', 'YES', 'Fairy Tail', '0216230.'),
(7, 'Death of a million starts', 'Breakthrough', '123', '3', 'Rexxon', 'YES', '123', '12');



CREATE TABLE `borrow` (
  `borrowId` int(11) NOT NULL,
  `memberName` varchar(255) NOT NULL,
  `matricNo` varchar(10) NOT NULL,
  `bookName` varchar(255) NOT NULL,
  `borrowDate` varchar(20) NOT NULL,
  `returnDate` varchar(20) NOT NULL,
  `bookId` int(2) NOT NULL,
  `borrowStatus` int(2) NOT NULL,
  `fine` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `news` (
  `newsId` int(11) NOT NULL,
  `announcement` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `news` (`newsId`, `announcement`) VALUES
(1, 'Welcome to Our Online Library Management System. You can have access to all our e-books at a really good affordable price!'),
(6, 'Man don''t dance'),
(9, 'Godfrey Okoye is going Places');



CREATE TABLE `students` (
  `studentId` int(11) NOT NULL,
  `matric_no` varchar(30) NOT NULL,
  `password` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(60) NOT NULL,
  `dept` varchar(60) NOT NULL,
  `numOfBooks` int(11) NOT NULL,
  `moneyOwed` varchar(20) NOT NULL,
  `photo` text NOT NULL,
  `phoneNumber` varchar(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `students` (`studentId`, `matric_no`, `password`, `username`, `email`, `dept`, `numOfBooks`, `moneyOwed`, `photo`, `phoneNumber`, `name`) VALUES
(1, '19248-cm-230', '1234', 'bams', 'lingojikarthikchary@gmail.com', 'Software Engineering', 2, '1500', '4477_1526321327.jpeg', '7416710865', 'karthik'),



ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);


ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrowId`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrowId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `studentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
