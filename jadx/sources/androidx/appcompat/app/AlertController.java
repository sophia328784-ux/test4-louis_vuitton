package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.core.widget.NestedScrollView;
import com.dynatrace.android.callback.Callback;
import com.vuitton.android.R;
import defpackage.md;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class AlertController {
    public NestedScrollView A;
    public Drawable C;
    public ImageView D;
    public TextView E;
    public TextView F;
    public View G;
    public ListAdapter H;
    public final int J;
    public final int K;
    public final int L;
    public final int M;
    public final int N;
    public final boolean O;
    public final Handler Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatDialog f787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Window f788c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f789e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CharSequence f790f;
    public RecycleListView g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public View f791h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f792i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f793j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f794k;
    public int l;
    public int m;
    public Button o;
    public CharSequence p;
    public Message q;
    public Drawable r;
    public Button s;
    public CharSequence t;
    public Message u;
    public Drawable v;
    public Button w;
    public CharSequence x;
    public Message y;
    public Drawable z;
    public boolean n = false;
    public int B = 0;
    public int I = -1;
    public int P = 0;
    public final View.OnClickListener R = new View.OnClickListener() { // from class: androidx.appcompat.app.AlertController.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Message messageObtain;
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            Callback.n(view);
            try {
                if (view == alertController.o && (message3 = alertController.q) != null) {
                    messageObtain = Message.obtain(message3);
                } else if (view != alertController.s || (message2 = alertController.u) == null) {
                    messageObtain = (view != alertController.w || (message = alertController.y) == null) ? null : Message.obtain(message);
                } else {
                    messageObtain = Message.obtain(message2);
                }
                if (messageObtain != null) {
                    messageObtain.sendToTarget();
                }
                alertController.Q.obtainMessage(1, alertController.f787b).sendToTarget();
            } finally {
                Callback.o();
            }
        }
    };

    public static class AlertParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f796a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LayoutInflater f797b;
        public Drawable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public CharSequence f799e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f800f;
        public CharSequence g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public CharSequence f801h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public DialogInterface.OnClickListener f802i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public CharSequence f803j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public DialogInterface.OnClickListener f804k;
        public DialogInterface.OnCancelListener m;
        public DialogInterface.OnDismissListener n;
        public DialogInterface.OnKeyListener o;
        public CharSequence[] p;
        public ListAdapter q;
        public DialogInterface.OnClickListener r;
        public int s;
        public View t;
        public boolean u;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f798c = 0;
        public int v = -1;
        public boolean l = true;

        public interface OnPrepareListViewListener {
        }

        public AlertParams(Context context) {
            this.f796a = context;
            this.f797b = (LayoutInflater) context.getSystemService("layout_inflater");
        }
    }

    public static final class ButtonHandler extends Handler {
        private static final int MSG_DISMISS_DIALOG = 1;
        private WeakReference<DialogInterface> mDialog;

        public ButtonHandler(DialogInterface dialogInterface) {
            this.mDialog = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == -3 || i2 == -2 || i2 == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.mDialog.get(), message.what);
            } else {
                if (i2 != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    public static class CheckedItemAdapter extends ArrayAdapter<CharSequence> {
        public CheckedItemAdapter(Context context, int i2, int i3, CharSequence[] charSequenceArr) {
            super(context, i2, i3, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, AppCompatDialog appCompatDialog, Window window) {
        this.f786a = context;
        this.f787b = appCompatDialog;
        this.f788c = window;
        this.Q = new ButtonHandler(appCompatDialog);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.f779e, R.attr.alertDialogStyle, 0);
        this.J = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        this.K = typedArrayObtainStyledAttributes.getResourceId(2, 0);
        this.L = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.M = typedArrayObtainStyledAttributes.getResourceId(7, 0);
        this.N = typedArrayObtainStyledAttributes.getResourceId(3, 0);
        this.O = typedArrayObtainStyledAttributes.getBoolean(6, true);
        this.d = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        appCompatDialog.supportRequestWindowFeature(1);
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static ViewGroup b(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public final void c(int i2, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.Q.obtainMessage(i2, onClickListener);
        }
        if (i2 == -3) {
            this.x = charSequence;
            this.y = message;
            this.z = drawable;
        } else if (i2 == -2) {
            this.t = charSequence;
            this.u = message;
            this.v = drawable;
        } else {
            if (i2 != -1) {
                md.n("Button does not exist");
                return;
            }
            this.p = charSequence;
            this.q = message;
            this.r = drawable;
        }
    }

    public final void d(int i2) {
        this.C = null;
        this.B = i2;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (i2 == 0) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageResource(this.B);
            }
        }
    }

    public static class RecycleListView extends ListView {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f807b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f808c;

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.u);
            this.f808c = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, -1);
            this.f807b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, -1);
        }

        public RecycleListView(Context context) {
            this(context, null);
        }
    }
}
