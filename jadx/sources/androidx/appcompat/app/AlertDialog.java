package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import com.dynatrace.android.callback.Callback;
import com.vuitton.android.R;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class AlertDialog extends AppCompatDialog implements DialogInterface {
    static final int LAYOUT_HINT_NONE = 0;
    static final int LAYOUT_HINT_SIDE = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f809c = 0;
    final AlertController mAlert;

    public AlertDialog(Context context, int i2) {
        super(context, resolveDialogTheme(context, i2));
        this.mAlert = new AlertController(getContext(), this, getWindow());
    }

    public static int resolveDialogTheme(Context context, int i2) {
        if (((i2 >>> 24) & 255) >= 1) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public Button getButton(int i2) {
        AlertController alertController = this.mAlert;
        if (i2 == -3) {
            return alertController.w;
        }
        if (i2 == -2) {
            return alertController.s;
        }
        if (i2 == -1) {
            return alertController.o;
        }
        alertController.getClass();
        return null;
    }

    public ListView getListView() {
        return this.mAlert.g;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        int i2;
        View viewFindViewById;
        int i3;
        ListAdapter listAdapter;
        View viewFindViewById2;
        super.onCreate(bundle);
        AlertController alertController = this.mAlert;
        int i4 = alertController.J;
        int i5 = alertController.K;
        if (i5 != 0 && alertController.P == 1) {
            i4 = i5;
        }
        alertController.f787b.setContentView(i4);
        Context context = alertController.f786a;
        Window window = alertController.f788c;
        View viewFindViewById3 = window.findViewById(R.id.parentPanel);
        View viewFindViewById4 = viewFindViewById3.findViewById(R.id.topPanel);
        View viewFindViewById5 = viewFindViewById3.findViewById(R.id.contentPanel);
        View viewFindViewById6 = viewFindViewById3.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById3.findViewById(R.id.customPanel);
        View viewInflate = alertController.f791h;
        if (viewInflate == null) {
            viewInflate = alertController.f792i != 0 ? LayoutInflater.from(context).inflate(alertController.f792i, viewGroup, false) : null;
        }
        boolean z = viewInflate != null;
        if (!z || !AlertController.a(viewInflate)) {
            window.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
            if (alertController.n) {
                frameLayout.setPadding(alertController.f793j, alertController.f794k, alertController.l, alertController.m);
            }
            if (alertController.g != null) {
                ((LinearLayout.LayoutParams) ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams())).weight = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View viewFindViewById7 = viewGroup.findViewById(R.id.topPanel);
        View viewFindViewById8 = viewGroup.findViewById(R.id.contentPanel);
        View viewFindViewById9 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup viewGroupB = AlertController.b(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupB2 = AlertController.b(viewFindViewById8, viewFindViewById5);
        ViewGroup viewGroupB3 = AlertController.b(viewFindViewById9, viewFindViewById6);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        alertController.A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        alertController.A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroupB2.findViewById(android.R.id.message);
        alertController.F = textView;
        if (textView != null) {
            CharSequence charSequence = alertController.f790f;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                alertController.A.removeView(alertController.F);
                if (alertController.g != null) {
                    ViewGroup viewGroup2 = (ViewGroup) alertController.A.getParent();
                    int iIndexOfChild = viewGroup2.indexOfChild(alertController.A);
                    viewGroup2.removeViewAt(iIndexOfChild);
                    viewGroup2.addView(alertController.g, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    viewGroupB2.setVisibility(8);
                }
            }
        }
        int i6 = alertController.d;
        Button button = (Button) viewGroupB3.findViewById(android.R.id.button1);
        alertController.o = button;
        View.OnClickListener onClickListener = alertController.R;
        button.setOnClickListener(onClickListener);
        if (TextUtils.isEmpty(alertController.p) && alertController.r == null) {
            alertController.o.setVisibility(8);
            i2 = 0;
        } else {
            alertController.o.setText(alertController.p);
            Drawable drawable = alertController.r;
            if (drawable != null) {
                drawable.setBounds(0, 0, i6, i6);
                alertController.o.setCompoundDrawables(alertController.r, null, null, null);
            }
            alertController.o.setVisibility(0);
            i2 = 1;
        }
        Button button2 = (Button) viewGroupB3.findViewById(android.R.id.button2);
        alertController.s = button2;
        button2.setOnClickListener(onClickListener);
        if (TextUtils.isEmpty(alertController.t) && alertController.v == null) {
            alertController.s.setVisibility(8);
        } else {
            alertController.s.setText(alertController.t);
            Drawable drawable2 = alertController.v;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, i6, i6);
                alertController.s.setCompoundDrawables(alertController.v, null, null, null);
            }
            alertController.s.setVisibility(0);
            i2 |= 2;
        }
        Button button3 = (Button) viewGroupB3.findViewById(android.R.id.button3);
        alertController.w = button3;
        button3.setOnClickListener(onClickListener);
        if (TextUtils.isEmpty(alertController.x) && alertController.z == null) {
            alertController.w.setVisibility(8);
            viewFindViewById = null;
        } else {
            alertController.w.setText(alertController.x);
            Drawable drawable3 = alertController.z;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, i6, i6);
                viewFindViewById = null;
                alertController.w.setCompoundDrawables(alertController.z, null, null, null);
            } else {
                viewFindViewById = null;
            }
            alertController.w.setVisibility(0);
            i2 |= 4;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i2 == 1) {
                Button button4 = alertController.o;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
            } else if (i2 == 2) {
                Button button5 = alertController.s;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i2 == 4) {
                Button button6 = alertController.w;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i2 == 0) {
            viewGroupB3.setVisibility(8);
        }
        if (alertController.G != null) {
            viewGroupB.addView(alertController.G, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            alertController.D = (ImageView) window.findViewById(android.R.id.icon);
            if (TextUtils.isEmpty(alertController.f789e) || !alertController.O) {
                window.findViewById(R.id.title_template).setVisibility(8);
                alertController.D.setVisibility(8);
                viewGroupB.setVisibility(8);
            } else {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                alertController.E = textView2;
                textView2.setText(alertController.f789e);
                int i7 = alertController.B;
                if (i7 != 0) {
                    alertController.D.setImageResource(i7);
                } else {
                    Drawable drawable4 = alertController.C;
                    if (drawable4 != null) {
                        alertController.D.setImageDrawable(drawable4);
                    } else {
                        alertController.E.setPadding(alertController.D.getPaddingLeft(), alertController.D.getPaddingTop(), alertController.D.getPaddingRight(), alertController.D.getPaddingBottom());
                        alertController.D.setVisibility(8);
                    }
                }
            }
        }
        boolean z2 = viewGroup.getVisibility() != 8;
        int i8 = (viewGroupB == null || viewGroupB.getVisibility() == 8) ? 0 : 1;
        boolean z3 = viewGroupB3.getVisibility() != 8;
        if (!z3 && (viewFindViewById2 = viewGroupB2.findViewById(R.id.textSpacerNoButtons)) != null) {
            viewFindViewById2.setVisibility(0);
        }
        if (i8 != 0) {
            NestedScrollView nestedScrollView2 = alertController.A;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            if (alertController.f790f != null || alertController.g != null) {
                viewFindViewById = viewGroupB.findViewById(R.id.titleDividerNoCustom);
            }
            i3 = 0;
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
        } else {
            i3 = 0;
            View viewFindViewById10 = viewGroupB2.findViewById(R.id.textSpacerNoTitle);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        }
        AlertController.RecycleListView recycleListView = alertController.g;
        if (recycleListView != null && (!z3 || i8 == 0)) {
            recycleListView.setPadding(recycleListView.getPaddingLeft(), i8 != 0 ? recycleListView.getPaddingTop() : recycleListView.f807b, recycleListView.getPaddingRight(), z3 ? recycleListView.getPaddingBottom() : recycleListView.f808c);
        }
        if (!z2) {
            View view = alertController.g;
            if (view == null) {
                view = alertController.A;
            }
            if (view != null) {
                int i9 = z3 ? 2 : i3;
                View viewFindViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View viewFindViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                view.setScrollIndicators(i8 | i9, 3);
                if (viewFindViewById11 != null) {
                    viewGroupB2.removeView(viewFindViewById11);
                }
                if (viewFindViewById12 != null) {
                    viewGroupB2.removeView(viewFindViewById12);
                }
            }
        }
        AlertController.RecycleListView recycleListView2 = alertController.g;
        if (recycleListView2 == null || (listAdapter = alertController.H) == null) {
            return;
        }
        recycleListView2.setAdapter(listAdapter);
        int i10 = alertController.I;
        if (i10 > -1) {
            recycleListView2.setItemChecked(i10, true);
            recycleListView2.setSelection(i10);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.mAlert.A;
        if (nestedScrollView == null || !nestedScrollView.d(keyEvent)) {
            return super.onKeyDown(i2, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.mAlert.A;
        if (nestedScrollView == null || !nestedScrollView.d(keyEvent)) {
            return super.onKeyUp(i2, keyEvent);
        }
        return true;
    }

    public void setButton(int i2, CharSequence charSequence, Message message) {
        this.mAlert.c(i2, charSequence, null, message, null);
    }

    public void setButtonPanelLayoutHint(int i2) {
        this.mAlert.P = i2;
    }

    public void setCustomTitle(View view) {
        this.mAlert.G = view;
    }

    public void setIcon(Drawable drawable) {
        AlertController alertController = this.mAlert;
        alertController.C = drawable;
        alertController.B = 0;
        ImageView imageView = alertController.D;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                alertController.D.setImageDrawable(drawable);
            }
        }
    }

    public void setIconAttribute(int i2) {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(i2, typedValue, true);
        this.mAlert.d(typedValue.resourceId);
    }

    public void setMessage(CharSequence charSequence) {
        AlertController alertController = this.mAlert;
        alertController.f790f = charSequence;
        TextView textView = alertController.F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        AlertController alertController = this.mAlert;
        alertController.f789e = charSequence;
        TextView textView = alertController.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void setView(View view, int i2, int i3, int i4, int i5) {
        AlertController alertController = this.mAlert;
        alertController.f791h = view;
        alertController.f792i = 0;
        alertController.n = true;
        alertController.f793j = i2;
        alertController.f794k = i3;
        alertController.l = i4;
        alertController.m = i5;
    }

    public void setButton(int i2, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.mAlert.c(i2, charSequence, onClickListener, null, null);
    }

    public void setButton(int i2, CharSequence charSequence, Drawable drawable, DialogInterface.OnClickListener onClickListener) {
        this.mAlert.c(i2, charSequence, onClickListener, null, drawable);
    }

    public void setView(View view) {
        AlertController alertController = this.mAlert;
        alertController.f791h = view;
        alertController.f792i = 0;
        alertController.n = false;
    }

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AlertController.AlertParams f810a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f811b;

        public Builder(Context context, int i2) {
            this.f810a = new AlertController.AlertParams(new ContextThemeWrapper(context, AlertDialog.resolveDialogTheme(context, i2)));
            this.f811b = i2;
        }

        public Builder a() {
            this.f810a.l = false;
            return this;
        }

        public Builder b(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f810a;
            alertParams.p = charSequenceArr;
            alertParams.r = onClickListener;
            return this;
        }

        public void c(String str) {
            this.f810a.g = str;
        }

        public AlertDialog create() {
            final AlertController.AlertParams alertParams = this.f810a;
            AlertDialog alertDialog = new AlertDialog(alertParams.f796a, this.f811b);
            final AlertController alertController = alertDialog.mAlert;
            View view = alertParams.f800f;
            if (view != null) {
                alertController.G = view;
            } else {
                CharSequence charSequence = alertParams.f799e;
                if (charSequence != null) {
                    alertController.f789e = charSequence;
                    TextView textView = alertController.E;
                    if (textView != null) {
                        textView.setText(charSequence);
                    }
                }
                Drawable drawable = alertParams.d;
                if (drawable != null) {
                    alertController.C = drawable;
                    alertController.B = 0;
                    ImageView imageView = alertController.D;
                    if (imageView != null) {
                        imageView.setVisibility(0);
                        alertController.D.setImageDrawable(drawable);
                    }
                }
                int i2 = alertParams.f798c;
                if (i2 != 0) {
                    alertController.d(i2);
                }
            }
            CharSequence charSequence2 = alertParams.g;
            if (charSequence2 != null) {
                alertController.f790f = charSequence2;
                TextView textView2 = alertController.F;
                if (textView2 != null) {
                    textView2.setText(charSequence2);
                }
            }
            CharSequence charSequence3 = alertParams.f801h;
            if (charSequence3 != null) {
                alertController.c(-1, charSequence3, alertParams.f802i, null, null);
            }
            CharSequence charSequence4 = alertParams.f803j;
            if (charSequence4 != null) {
                alertController.c(-2, charSequence4, alertParams.f804k, null, null);
            }
            if (alertParams.p != null || alertParams.q != null) {
                AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) alertParams.f797b.inflate(alertController.L, (ViewGroup) null);
                int i3 = alertParams.u ? alertController.M : alertController.N;
                ListAdapter checkedItemAdapter = alertParams.q;
                if (checkedItemAdapter == null) {
                    checkedItemAdapter = new AlertController.CheckedItemAdapter(alertParams.f796a, i3, android.R.id.text1, alertParams.p);
                }
                alertController.H = checkedItemAdapter;
                alertController.I = alertParams.v;
                if (alertParams.r != null) {
                    recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.3
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public final void onItemClick(AdapterView adapterView, View view2, int i4, long j2) {
                            AppCompatDialog appCompatDialog = alertController.f787b;
                            AlertParams alertParams2 = AlertParams.this;
                            Callback.q(view2);
                            try {
                                alertParams2.r.onClick(appCompatDialog, i4);
                                if (!alertParams2.u) {
                                    appCompatDialog.dismiss();
                                }
                            } finally {
                                Callback.r();
                            }
                        }
                    });
                }
                if (alertParams.u) {
                    recycleListView.setChoiceMode(1);
                }
                alertController.g = recycleListView;
            }
            View view2 = alertParams.t;
            if (view2 != null) {
                alertController.f791h = view2;
                alertController.f792i = 0;
                alertController.n = false;
            } else {
                int i4 = alertParams.s;
                if (i4 != 0) {
                    alertController.f791h = null;
                    alertController.f792i = i4;
                    alertController.n = false;
                }
            }
            alertDialog.setCancelable(alertParams.l);
            if (alertParams.l) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(alertParams.m);
            alertDialog.setOnDismissListener(alertParams.n);
            DialogInterface.OnKeyListener onKeyListener = alertParams.o;
            if (onKeyListener != null) {
                alertDialog.setOnKeyListener(onKeyListener);
            }
            return alertDialog;
        }

        public Builder d(DialogInterface.OnCancelListener onCancelListener) {
            this.f810a.m = onCancelListener;
            return this;
        }

        public Builder e(DialogInterface.OnDismissListener onDismissListener) {
            this.f810a.n = onDismissListener;
            return this;
        }

        public void f(int i2) {
            AlertController.AlertParams alertParams = this.f810a;
            alertParams.f799e = alertParams.f796a.getText(i2);
        }

        public final AlertDialog g() {
            AlertDialog alertDialogCreate = create();
            alertDialogCreate.show();
            return alertDialogCreate;
        }

        public Context getContext() {
            return this.f810a.f796a;
        }

        public Builder setNegativeButton(int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f810a;
            alertParams.f803j = alertParams.f796a.getText(i2);
            alertParams.f804k = onClickListener;
            return this;
        }

        public Builder setPositiveButton(int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f810a;
            alertParams.f801h = alertParams.f796a.getText(i2);
            alertParams.f802i = onClickListener;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.f810a.f799e = charSequence;
            return this;
        }

        public Builder setView(View view) {
            AlertController.AlertParams alertParams = this.f810a;
            alertParams.t = view;
            alertParams.s = 0;
            return this;
        }

        public Builder(Context context) {
            this(context, AlertDialog.resolveDialogTheme(context, 0));
        }
    }

    public AlertDialog(Context context) {
        this(context, 0);
    }

    public AlertDialog(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        this(context, 0);
        setCancelable(z);
        setOnCancelListener(onCancelListener);
    }

    public void setIcon(int i2) {
        this.mAlert.d(i2);
    }
}
