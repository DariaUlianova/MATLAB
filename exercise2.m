function varargout = exercise2(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @exercise2_OpeningFcn, ...
                   'gui_OutputFcn',  @exercise2_OutputFcn, ...
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

function exercise2_OpeningFcn(hObject, eventdata, handles, varargin)

guidata(hObject, handles);

function varargout = exercise2_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function uibuttongroup1_CreateFcn(hObject, eventdata, handles)

function pushbutton1_Callback(hObject, eventdata, handles)
cla
x=[0:0.01:4*pi];
y1=sin(x);
y2=cos(x); 
if get(handles.checkbox1,'value')==1 
    plot(x,y1);
    hold on
end
if get(handles.checkbox3,'value')==1 
    plot(x,y2)
    hold on
end
grid on;
xlabel('x');
ylabel('y');

function checkbox1_Callback(hObject, eventdata, handles)

function checkbox3_Callback(hObject, eventdata, handles)

