function varargout = guidef(varargin)
% GUIDEF MATLAB code for guidef.fig
%      GUIDEF, by itself, creates a new GUIDEF or raises the existing
%      singleton*.
%
%      H = GUIDEF returns the handle to a new GUIDEF or the handle to
%      the existing singleton*.
%
%      GUIDEF('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIDEF.M with the given input arguments.
%
%      GUIDEF('Property','Value',...) creates a new GUIDEF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guidef_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guidef_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guidef

% Last Modified by GUIDE v2.5 20-Dec-2020 21:38:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guidef_OpeningFcn, ...
                   'gui_OutputFcn',  @guidef_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before guidef is made visible.
function guidef_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guidef (see VARARGIN)

% Choose default command line output for guidef
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guidef wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guidef_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_time_Callback(hObject, eventdata, handles)
time = str2double(get(handles.edit_time,'string'))
tork = str2double(get(handles.edit_torque,'string'))
L0 = str2double(get(handles.edit_L0,'string'))
I1 = str2double(get(handles.edit_I1,'string'))
init_th1 = str2double(get(handles.edit_init_th1,'string'))


% --- Executes during object creation, after setting all properties.
function edit_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_torque_Callback(hObject, eventdata, handles)
% hObject    handle to edit_torque (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_torque as text
%        str2double(get(hObject,'String')) returns contents of edit_torque as a double


% --- Executes during object creation, after setting all properties.
function edit_torque_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_torque (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_L0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_L0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_L0 as text
%        str2double(get(hObject,'String')) returns contents of edit_L0 as a double


% --- Executes during object creation, after setting all properties.
function edit_L0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_L0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_I1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_I1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_I1 as text
%        str2double(get(hObject,'String')) returns contents of edit_I1 as a double


% --- Executes during object creation, after setting all properties.
function edit_I1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_I1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_init_th1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_init_th1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_init_th1 as text
%        str2double(get(hObject,'String')) returns contents of edit_init_th1 as a double


% --- Executes during object creation, after setting all properties.
function edit_init_th1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_init_th1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb_sim.
function pb_sim_Callback(hObject, eventdata, handles)
% hObject    handle to pb_sim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cb_th0.
function cb_th0_Callback(hObject, eventdata, handles)
% hObject    handle to cb_th0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_th0


% --- Executes on button press in cb_th1.
function cb_th1_Callback(hObject, eventdata, handles)
% hObject    handle to cb_th1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_th1
