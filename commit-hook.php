<?php

if(array_key_exists('payload', $_POST))
{
  file_put_contents("./.triggerpull", "Pull from github!!!!", FILE_APPEND);
}
