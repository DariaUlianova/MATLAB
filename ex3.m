function varargout = ex3(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ex3_OpeningFcn, ...
                   'gui_OutputFcn',  @ex3_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end


function ex3_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

guidata(hObject, handles);


function varargout = ex3_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function uibuttongroup1_CreateFcn(hObject, eventdata, handles)

function checkbox3_Callback(hObject, eventdata, handles)



function checkbox4_Callback(hObject, eventdata, handles)



function checkbox1_Callback(hObject, eventdata, handles)


function checkbox2_Callback(hObject, eventdata, handles)


function uibuttongroup2_CreateFcn(hObject, eventdata, handles)

function pushbutton1_Callback(hObject, eventdata, handles)
cla;
x=[-2:0.2:2];
y=exp(-x.^2);
if get(handles.checkbox1,'value')==1 
    plot(x,y);
    hold on
    grid on;
end
x1=[0:0.1:4*pi];
y1=sin(x1);
if get(handles.checkbox3,'value')==1 
    plot(x1,y1);
    grid on;
    hold on
end
xlabel('x');
    ylabel('y');


% function pushbutton2_Callback(hObject, eventdata, handles)
% cla;
% x1=[0:0.1:4*pi];
% y1=sin(x1);
% if get(handles.checkbox3,'value')==1 
%     plot(x1,y1);
%     xlabel('x');
%     ylabel('y');
%     grid on;
% end
