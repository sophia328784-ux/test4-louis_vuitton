package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.collection.SimpleArrayMap;
import com.dynatrace.android.callback.Callback;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatViewInflater {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class[] f855b = {Context.class, AttributeSet.class};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f856c = {R.attr.onClick};
    public static final String[] d = {"android.widget.", "android.view.", "android.webkit."};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SimpleArrayMap f857e = new SimpleArrayMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f858a = new Object[2];

    public static class DeclaredOnClickListener implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final View f859b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f860c;
        public Method d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Context f861e;

        public DeclaredOnClickListener(View view, String str) {
            this.f859b = view;
            this.f860c = str;
        }

        public final void a(Context context) {
            String str;
            Method method;
            while (true) {
                String str2 = this.f860c;
                if (context == null) {
                    View view = this.f859b;
                    int id = view.getId();
                    if (id == -1) {
                        str = "";
                    } else {
                        str = " with id '" + view.getContext().getResources().getResourceEntryName(id) + "'";
                    }
                    throw new IllegalStateException("Could not find method " + str2 + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + view.getClass() + str);
                }
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(str2, View.class)) != null) {
                        this.d = method;
                        this.f861e = context;
                        return;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Callback.n(view);
            try {
                if (this.d == null) {
                    a(this.f859b.getContext());
                }
                try {
                    try {
                        this.d.invoke(this.f861e, view);
                        Callback.o();
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException("Could not execute method for android:onClick", e2);
                    }
                } catch (IllegalAccessException e3) {
                    throw new IllegalStateException("Could not execute non-public method for android:onClick", e3);
                }
            } catch (Throwable th) {
                Callback.o();
                throw th;
            }
        }
    }

    public AppCompatAutoCompleteTextView a(Context context, AttributeSet attributeSet) {
        return new AppCompatAutoCompleteTextView(context, attributeSet);
    }

    public AppCompatButton b(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    public AppCompatCheckBox c(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    public AppCompatRadioButton d(Context context, AttributeSet attributeSet) {
        return new AppCompatRadioButton(context, attributeSet);
    }

    public AppCompatTextView e(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    public final View f(Context context, String str, String str2) {
        String strConcat;
        SimpleArrayMap simpleArrayMap = f857e;
        Constructor constructor = (Constructor) simpleArrayMap.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    strConcat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                strConcat = str;
            }
            constructor = Class.forName(strConcat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f855b);
            simpleArrayMap.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.f858a);
    }
}
