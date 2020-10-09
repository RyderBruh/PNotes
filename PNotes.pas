program app2; 

type
   u_written = Record
      u_notes: String;
   end;

var
  a, i: integer;
  filename, data: string;
  myfile: text;
  f: file of u_written;
  

begin
  writeln('PNotes v1.0');
  
  writeln('Hi there! What we are gonna do today?');
  writeln('1. Start new page 2. Read your previous notes 3. Exit');
  
  read(a);
  
  if (a = 1) then
    begin
      writeln('Enter the file name: ');
      readln(filename);
   
      assign(myfile, filename);
      rewrite(myfile);
   
      writeln(myfile, 'Write your notes here: '); 
   
      close(myfile);
      
    end
    
  else if (a = 2) then
    begin
      
      assign(f, fliename);
      reset(f); 
      while not eof(f) do
        begin
          read(f, u_written);
          writeln('Name: ', u_written);
        end;
   
   close(f);
    
    end
    
  else if (a = 3) then
    begin
      wrteln('Ok, PNotes are closing (press any key)');
      read();
    end
    
  else
    writeln('ERROR!');
  
  
end.