function varargout = hesap_mak_gui(varargin)
% HESAP_MAK_GUI MATLAB code for hesap_mak_gui.fig
%      HESAP_MAK_GUI, by itself, creates a new HESAP_MAK_GUI or raises the existing
%      singleton*.
%
%      H = HESAP_MAK_GUI returns the handle to a new HESAP_MAK_GUI or the handle to
%      the existing singleton*.
%
%      HESAP_MAK_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HESAP_MAK_GUI.M with the given input arguments.
%
%      HESAP_MAK_GUI('Property','Value',...) creates a new HESAP_MAK_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before hesap_mak_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to hesap_mak_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help hesap_mak_gui

% Last Modified by GUIDE v2.5 17-Jan-2021 21:31:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @hesap_mak_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @hesap_mak_gui_OutputFcn, ...
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


% --- Executes just before hesap_mak_gui is made visible.
function hesap_mak_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to hesap_mak_gui (see VARARGIN)

% Choose default command line output for hesap_mak_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes hesap_mak_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = hesap_mak_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in parantez.
function parantez_Callback(hObject, eventdata, handles)
% hObject    handle to parantez (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

valuedeger=get(gcbo,'value')
if valuedeger==1
    ekran=findobj(gcbf,'tag','hesapalani')
    yeniekran=get(ekran,'string')
    bilgi=[yeniekran '(']
    set(ekran,'string',bilgi)
    
elseif   valuedeger==0
    
   ekran=findobj(gcbf,'tag','hesapalani')
    yeniekran=get(ekran,'string')
    bilgi=[yeniekran  '(']
    set(ekran,'string',bilgi) 
    
end


% --- Executes on button press in sifir.
function sifir_Callback(hObject, eventdata, handles)
% hObject    handle to sifir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','Hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'0']
set(ekran,'string',yeniekran)





% --- Executes on button press in nokta.
function nokta_Callback(hObject, eventdata, handles)
% hObject    handle to nokta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','Hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'.']
set(ekran,'string',yeniekran)


% --- Executes on button press in esittir.
function esittir_Callback(hObject, eventdata, handles)
% hObject    handle to esittir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'tag','hesapalani')
bilgi=get(ekran,'string')
cevap=findobj(gcbf,'tag','sonuc')
bilgi=str2num(bilgi)
set(cevap,'string',bilgi)


function hesapalani_Callback(hObject, eventdata, handles)
% hObject    handle to hesapalani (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hesapalani as text
%        str2double(get(hObject,'String')) returns contents of hesapalani as a double


% --- Executes during object creation, after setting all properties.
function hesapalani_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hesapalani (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sonuc_Callback(hObject, eventdata, handles)
% hObject    handle to sonuc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sonuc as text
%        str2double(get(hObject,'String')) returns contents of sonuc as a double


% --- Executes during object creation, after setting all properties.
function sonuc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sonuc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in iki.
function iki_Callback(hObject, eventdata, handles)
% hObject    handle to iki (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'2']
set(ekran,'string',yeniekran)


% --- Executes on button press in uc.
function uc_Callback(hObject, eventdata, handles)
% hObject    handle to uc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'3']
set(ekran,'string',yeniekran)


% --- Executes on button press in toplam.
function toplam_Callback(hObject, eventdata, handles)
% hObject    handle to toplam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'+']
set(ekran,'string',yeniekran)


% --- Executes on button press in bes.
function bes_Callback(hObject, eventdata, handles)
% hObject    handle to bes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'5']
set(ekran,'string',yeniekran)


% --- Executes on button press in alti.
function alti_Callback(hObject, eventdata, handles)
% hObject    handle to alti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'6']
set(ekran,'string',yeniekran)


% --- Executes on button press in eksi.
function eksi_Callback(hObject, eventdata, handles)
% hObject    handle to eksi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'-']
set(ekran,'string',yeniekran)


% --- Executes on button press in sekiz.
function sekiz_Callback(hObject, eventdata, handles)
% hObject    handle to sekiz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'8']
set(ekran,'string',yeniekran)


% --- Executes on button press in dokuz.
function dokuz_Callback(hObject, eventdata, handles)
% hObject    handle to dokuz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'9']
set(ekran,'string',yeniekran)


% --- Executes on button press in carpim.
function carpim_Callback(hObject, eventdata, handles)
% hObject    handle to carpim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'*']
set(ekran,'string',yeniekran)


% --- Executes on button press in bir.
function bir_Callback(hObject, eventdata, handles)
% hObject    handle to bir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'1']
set(ekran,'string',yeniekran)


% --- Executes on button press in dort.
function dort_Callback(hObject, eventdata, handles)
% hObject    handle to dort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'4']
set(ekran,'string',yeniekran)


% --- Executes on button press in yedi.
function yedi_Callback(hObject, eventdata, handles)
% hObject    handle to yedi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'7']
set(ekran,'string',yeniekran)


% --- Executes on button press in ans.
function ans_Callback(hObject, eventdata, handles)
% hObject    handle to ans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'tag','hesapalani')
cevap=findobj(gcbf,'tag','sonuc')
bilgi2=get(cevap,'string')
set(ekran,'string',bilgi2)
set(cevap,'string','')







% --- Executes on button press in gerial.
function gerial_Callback(hObject, eventdata, handles)
% hObject    handle to gerial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

ekran=findobj(gcbf,'tag','hesapalani')
bilgi=get(ekran,'string')
bilgi(end)=''
yeniekran=[bilgi]
set(ekran,'string',yeniekran)





% --- Executes on button press in bolme.
function bolme_Callback(hObject, eventdata, handles)
% hObject    handle to bolme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'Tag','hesapalani')
bilgi=get(ekran,'string')
yeniekran=[bilgi,'/']
set(ekran,'string',yeniekran)


% --- Executes on button press in silme.
function silme_Callback(hObject, eventdata, handles)
% hObject    handle to silme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ekran=findobj(gcbf,'tag','hesapalani')
set(ekran,'string','')
cevap=findobj(gcbf,'tag','sonuc')
set(cevap,'string','')
