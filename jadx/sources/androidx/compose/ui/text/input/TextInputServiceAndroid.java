package androidx.compose.ui.text.input;

import android.graphics.Rect;
import android.view.Choreographer;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.input.pointer.MatrixPositionCalculator;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import defpackage.cl0;
import defpackage.dc;
import defpackage.v40;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u0001:\u0001\u000eB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\r¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/text/input/TextInputServiceAndroid;", "Landroidx/compose/ui/text/input/PlatformTextInputService;", "Landroid/view/View;", "view", "Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;", "rootPositionCalculator", "Landroidx/compose/ui/text/input/InputMethodManager;", "inputMethodManager", "Ljava/util/concurrent/Executor;", "inputCommandProcessorExecutor", "<init>", "(Landroid/view/View;Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;Landroidx/compose/ui/text/input/InputMethodManager;Ljava/util/concurrent/Executor;)V", "positionCalculator", "(Landroid/view/View;Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;)V", "TextInputCommand", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextInputServiceAndroid implements PlatformTextInputService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f10845a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InputMethodManager f10846b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f10847c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Function1 f10848e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Function1 f10849f;
    public TextFieldValue g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ImeOptions f10850h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f10851i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Lazy f10852j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Rect f10853k;
    public final CursorAnchorInfoController l;
    public final MutableVector m;
    public a n;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;", "", "StartInput", "StopInput", "ShowKeyboard", "HideKeyboard", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class TextInputCommand {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ TextInputCommand[] $VALUES;
        public static final TextInputCommand HideKeyboard;
        public static final TextInputCommand ShowKeyboard;
        public static final TextInputCommand StartInput;
        public static final TextInputCommand StopInput;

        static {
            TextInputCommand textInputCommand = new TextInputCommand("StartInput", 0);
            StartInput = textInputCommand;
            TextInputCommand textInputCommand2 = new TextInputCommand("StopInput", 1);
            StopInput = textInputCommand2;
            TextInputCommand textInputCommand3 = new TextInputCommand("ShowKeyboard", 2);
            ShowKeyboard = textInputCommand3;
            TextInputCommand textInputCommand4 = new TextInputCommand("HideKeyboard", 3);
            HideKeyboard = textInputCommand4;
            TextInputCommand[] textInputCommandArr = {textInputCommand, textInputCommand2, textInputCommand3, textInputCommand4};
            $VALUES = textInputCommandArr;
            $ENTRIES = EnumEntriesKt.a(textInputCommandArr);
        }

        public static TextInputCommand valueOf(String str) {
            return (TextInputCommand) Enum.valueOf(TextInputCommand.class, str);
        }

        public static TextInputCommand[] values() {
            return (TextInputCommand[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f10854a;

        static {
            int[] iArr = new int[TextInputCommand.values().length];
            try {
                iArr[TextInputCommand.StartInput.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextInputCommand.StopInput.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TextInputCommand.ShowKeyboard.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TextInputCommand.HideKeyboard.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f10854a = iArr;
        }
    }

    public TextInputServiceAndroid(View view, MatrixPositionCalculator matrixPositionCalculator, InputMethodManager inputMethodManager, Executor executor) {
        this.f10845a = view;
        this.f10846b = inputMethodManager;
        this.f10847c = executor;
        this.f10848e = TextInputServiceAndroid$onEditCommand$1.f10857c;
        this.f10849f = TextInputServiceAndroid$onImeActionPerformed$1.f10858c;
        TextRange.f10564b.getClass();
        this.g = new TextFieldValue("", TextRange.f10565c, (TextRange) null, 4, (DefaultConstructorMarker) null);
        ImeOptions.f10793h.getClass();
        this.f10850h = ImeOptions.f10794i;
        this.f10851i = new ArrayList();
        this.f10852j = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<BaseInputConnection>() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$baseInputConnection$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return new BaseInputConnection(this.f10855c.f10845a, false);
            }
        });
        this.l = new CursorAnchorInfoController(matrixPositionCalculator, inputMethodManager);
        this.m = new MutableVector(new TextInputCommand[16], 0);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void a() {
        i(TextInputCommand.StartInput);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void b() {
        this.d = false;
        this.f10848e = TextInputServiceAndroid$stopInput$1.f10859c;
        this.f10849f = TextInputServiceAndroid$stopInput$2.f10860c;
        this.f10853k = null;
        i(TextInputCommand.StopInput);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void c(TextFieldValue textFieldValue, ImeOptions imeOptions, cl0 cl0Var, Function1 function1) {
        this.d = true;
        this.g = textFieldValue;
        this.f10850h = imeOptions;
        this.f10848e = cl0Var;
        this.f10849f = function1;
        i(TextInputCommand.StartInput);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void d() {
        i(TextInputCommand.HideKeyboard);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void e(TextFieldValue textFieldValue, TextFieldValue textFieldValue2) {
        boolean z = (TextRange.b(this.g.f10841b, textFieldValue2.f10841b) && Intrinsics.c(this.g.f10842c, textFieldValue2.f10842c)) ? false : true;
        this.g = textFieldValue2;
        int size = this.f10851i.size();
        for (int i2 = 0; i2 < size; i2++) {
            RecordingInputConnection recordingInputConnection = (RecordingInputConnection) ((WeakReference) this.f10851i.get(i2)).get();
            if (recordingInputConnection != null) {
                recordingInputConnection.d = textFieldValue2;
            }
        }
        CursorAnchorInfoController cursorAnchorInfoController = this.l;
        synchronized (cursorAnchorInfoController.f10763c) {
            cursorAnchorInfoController.f10768j = null;
            cursorAnchorInfoController.l = null;
            cursorAnchorInfoController.f10769k = null;
            cursorAnchorInfoController.m = CursorAnchorInfoController$invalidate$1$1.f10770c;
            cursorAnchorInfoController.n = null;
            cursorAnchorInfoController.o = null;
        }
        if (Intrinsics.c(textFieldValue, textFieldValue2)) {
            if (z) {
                InputMethodManager inputMethodManager = this.f10846b;
                int iF = TextRange.f(textFieldValue2.f10841b);
                int iE = TextRange.e(textFieldValue2.f10841b);
                TextRange textRange = this.g.f10842c;
                int iF2 = textRange != null ? TextRange.f(textRange.f10566a) : -1;
                TextRange textRange2 = this.g.f10842c;
                inputMethodManager.a(iF, iE, iF2, textRange2 != null ? TextRange.e(textRange2.f10566a) : -1);
                return;
            }
            return;
        }
        if (textFieldValue != null && (!Intrinsics.c(textFieldValue.f10840a.f10420c, textFieldValue2.f10840a.f10420c) || (TextRange.b(textFieldValue.f10841b, textFieldValue2.f10841b) && !Intrinsics.c(textFieldValue.f10842c, textFieldValue2.f10842c)))) {
            this.f10846b.b();
            return;
        }
        int size2 = this.f10851i.size();
        for (int i3 = 0; i3 < size2; i3++) {
            RecordingInputConnection recordingInputConnection2 = (RecordingInputConnection) ((WeakReference) this.f10851i.get(i3)).get();
            if (recordingInputConnection2 != null) {
                TextFieldValue textFieldValue3 = this.g;
                InputMethodManager inputMethodManager2 = this.f10846b;
                if (recordingInputConnection2.f10832h) {
                    recordingInputConnection2.d = textFieldValue3;
                    if (recordingInputConnection2.f10831f) {
                        inputMethodManager2.updateExtractedText(recordingInputConnection2.f10830e, InputState_androidKt.a(textFieldValue3));
                    }
                    TextRange textRange3 = textFieldValue3.f10842c;
                    long j2 = textFieldValue3.f10841b;
                    int iF3 = textRange3 != null ? TextRange.f(textRange3.f10566a) : -1;
                    TextRange textRange4 = textFieldValue3.f10842c;
                    inputMethodManager2.a(TextRange.f(j2), TextRange.e(j2), iF3, textRange4 != null ? TextRange.e(textRange4.f10566a) : -1);
                }
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void f() {
        i(TextInputCommand.ShowKeyboard);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void g(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, Function1 function1, androidx.compose.ui.geometry.Rect rect, androidx.compose.ui.geometry.Rect rect2) {
        CursorAnchorInfoController cursorAnchorInfoController = this.l;
        synchronized (cursorAnchorInfoController.f10763c) {
            try {
                cursorAnchorInfoController.f10768j = textFieldValue;
                cursorAnchorInfoController.l = offsetMapping;
                cursorAnchorInfoController.f10769k = textLayoutResult;
                cursorAnchorInfoController.m = function1;
                cursorAnchorInfoController.n = rect;
                cursorAnchorInfoController.o = rect2;
                if (cursorAnchorInfoController.f10764e || cursorAnchorInfoController.d) {
                    cursorAnchorInfoController.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void h(androidx.compose.ui.geometry.Rect rect) {
        Rect rect2;
        this.f10853k = new Rect(MathKt.c(rect.f8811a), MathKt.c(rect.f8812b), MathKt.c(rect.f8813c), MathKt.c(rect.d));
        if (!this.f10851i.isEmpty() || (rect2 = this.f10853k) == null) {
            return;
        }
        this.f10845a.requestRectangleOnScreen(new Rect(rect2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.compose.ui.text.input.a, java.lang.Runnable] */
    public final void i(TextInputCommand textInputCommand) {
        this.m.b(textInputCommand);
        if (this.n == null) {
            ?? r2 = new Runnable() { // from class: androidx.compose.ui.text.input.a
                @Override // java.lang.Runnable
                public final void run() {
                    View viewFindFocus;
                    TextInputServiceAndroid textInputServiceAndroid = this.f10866b;
                    InputMethodManager inputMethodManager = textInputServiceAndroid.f10846b;
                    textInputServiceAndroid.n = null;
                    MutableVector mutableVector = textInputServiceAndroid.m;
                    View view = textInputServiceAndroid.f10845a;
                    if (!view.isFocused() && (viewFindFocus = view.getRootView().findFocus()) != null && viewFindFocus.onCheckIsTextEditor()) {
                        mutableVector.j();
                        return;
                    }
                    Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                    Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                    Object[] objArr = mutableVector.f8165b;
                    int i2 = mutableVector.d;
                    for (int i3 = 0; i3 < i2; i3++) {
                        TextInputServiceAndroid.TextInputCommand textInputCommand2 = (TextInputServiceAndroid.TextInputCommand) objArr[i3];
                        int i4 = TextInputServiceAndroid.WhenMappings.f10854a[textInputCommand2.ordinal()];
                        if (i4 == 1) {
                            Boolean bool = Boolean.TRUE;
                            ref$ObjectRef.f71921b = bool;
                            ref$ObjectRef2.f71921b = bool;
                        } else if (i4 == 2) {
                            Boolean bool2 = Boolean.FALSE;
                            ref$ObjectRef.f71921b = bool2;
                            ref$ObjectRef2.f71921b = bool2;
                        } else if (i4 != 3 && i4 != 4) {
                            v40.g();
                            return;
                        } else if (!Intrinsics.c(ref$ObjectRef.f71921b, Boolean.FALSE)) {
                            ref$ObjectRef2.f71921b = Boolean.valueOf(textInputCommand2 == TextInputServiceAndroid.TextInputCommand.ShowKeyboard);
                        }
                    }
                    mutableVector.j();
                    if (Intrinsics.c(ref$ObjectRef.f71921b, Boolean.TRUE)) {
                        inputMethodManager.b();
                    }
                    Boolean bool3 = (Boolean) ref$ObjectRef2.f71921b;
                    if (bool3 != null) {
                        if (bool3.booleanValue()) {
                            inputMethodManager.c();
                        } else {
                            inputMethodManager.d();
                        }
                    }
                    if (Intrinsics.c(ref$ObjectRef.f71921b, Boolean.FALSE)) {
                        inputMethodManager.b();
                    }
                }
            };
            this.f10847c.execute(r2);
            this.n = r2;
        }
    }

    public TextInputServiceAndroid(View view, MatrixPositionCalculator matrixPositionCalculator, InputMethodManager inputMethodManager, Executor executor, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, matrixPositionCalculator, inputMethodManager, (i2 & 8) != 0 ? new dc(Choreographer.getInstance(), 2) : executor);
    }

    public TextInputServiceAndroid(View view, MatrixPositionCalculator matrixPositionCalculator) {
        this(view, matrixPositionCalculator, new InputMethodManagerImpl(view), null, 8, null);
    }
}
