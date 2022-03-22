<?php

$pathComposer = __DIR__ . '/../vendor/autoload.php';

if (file_exists($pathComposer)) {
	require $pathComposer;
} else {
	echo 'Not autoload file!';
}