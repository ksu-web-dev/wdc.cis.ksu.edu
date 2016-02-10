<?php

if(array_key_exists('payload', $_POST))
{
  shell_exec('cd /net/files.cis.ksu.edu/exports/web/wdc/htdocs/ && git reset --hard HEAD && git pull');
}
