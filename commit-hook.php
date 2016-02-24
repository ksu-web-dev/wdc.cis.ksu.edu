<?php

if(array_key_exists('payload', $_POST))
{
  unlink("./.triggerpull");
}
