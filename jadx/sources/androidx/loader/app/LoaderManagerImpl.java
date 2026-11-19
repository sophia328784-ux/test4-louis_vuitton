package androidx.loader.app;

import android.os.Looper;
import androidx.collection.SparseArrayCompat;
import androidx.core.util.DebugUtils;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.loader.content.Loader;
import com.google.android.gms.auth.api.signin.internal.zbc;
import defpackage.md;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class LoaderManagerImpl extends LoaderManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LifecycleOwner f13617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LoaderViewModel f13618b;

    public static class LoaderInfo<D> extends MutableLiveData<D> implements Loader.OnLoadCompleteListener<D> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Loader f13619a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LifecycleOwner f13620b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public LoaderObserver f13621c;

        public LoaderInfo(Loader loader) {
            this.f13619a = loader;
            if (loader.f13629a == null) {
                loader.f13629a = this;
            } else {
                md.k("There is already a listener registered");
                throw null;
            }
        }

        public final void b() {
            LifecycleOwner lifecycleOwner = this.f13620b;
            LoaderObserver loaderObserver = this.f13621c;
            if (lifecycleOwner == null || loaderObserver == null) {
                return;
            }
            super.removeObserver(loaderObserver);
            observe(lifecycleOwner, loaderObserver);
        }

        public final void c(Object obj) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                super.setValue(obj);
            } else {
                postValue(obj);
            }
        }

        @Override // androidx.lifecycle.LiveData
        public final void onActive() {
            Loader loader = this.f13619a;
            loader.f13630b = true;
            loader.d = false;
            loader.f13631c = false;
            loader.c();
        }

        @Override // androidx.lifecycle.LiveData
        public final void onInactive() {
            this.f13619a.f13630b = false;
        }

        @Override // androidx.lifecycle.LiveData
        public final void removeObserver(Observer observer) {
            super.removeObserver(observer);
            this.f13620b = null;
            this.f13621c = null;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #0 : ");
            DebugUtils.a(this.f13619a, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    public static class LoaderObserver<D> implements Observer<D> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LoaderManager.LoaderCallbacks f13622b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13623c = false;

        public LoaderObserver(Loader loader, LoaderManager.LoaderCallbacks loaderCallbacks) {
            this.f13622b = loaderCallbacks;
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            this.f13622b.a(obj);
            this.f13623c = true;
        }

        public final String toString() {
            return this.f13622b.toString();
        }
    }

    public static class LoaderViewModel extends ViewModel {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ViewModelProvider.Factory f13624c = new AnonymousClass1();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SparseArrayCompat f13625a = new SparseArrayCompat();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f13626b = false;

        /* JADX INFO: renamed from: androidx.loader.app.LoaderManagerImpl$LoaderViewModel$1, reason: invalid class name */
        public static class AnonymousClass1 implements ViewModelProvider.Factory {
            @Override // androidx.lifecycle.ViewModelProvider.Factory
            public final ViewModel create(Class cls) {
                return new LoaderViewModel();
            }
        }

        @Override // androidx.lifecycle.ViewModel
        public final void onCleared() {
            super.onCleared();
            SparseArrayCompat sparseArrayCompat = this.f13625a;
            int iE = sparseArrayCompat.e();
            for (int i2 = 0; i2 < iE; i2++) {
                LoaderInfo loaderInfo = (LoaderInfo) sparseArrayCompat.f(i2);
                Loader loader = loaderInfo.f13619a;
                loader.b();
                loader.f13631c = true;
                LoaderObserver loaderObserver = loaderInfo.f13621c;
                if (loaderObserver != null) {
                    loaderInfo.removeObserver(loaderObserver);
                }
                LoaderInfo loaderInfo2 = loader.f13629a;
                if (loaderInfo2 == null) {
                    md.k("No listener register");
                    return;
                }
                if (loaderInfo2 != loaderInfo) {
                    md.n("Attempting to unregister the wrong listener");
                    return;
                }
                loader.f13629a = null;
                if (loaderObserver != null) {
                    boolean z = loaderObserver.f13623c;
                }
                loader.d = true;
                loader.f13630b = false;
                loader.f13631c = false;
                loader.f13632e = false;
            }
            int i3 = sparseArrayCompat.f3385e;
            Object[] objArr = sparseArrayCompat.d;
            for (int i4 = 0; i4 < i3; i4++) {
                objArr[i4] = null;
            }
            sparseArrayCompat.f3385e = 0;
            sparseArrayCompat.f3383b = false;
        }
    }

    public LoaderManagerImpl(LifecycleOwner lifecycleOwner, ViewModelStore viewModelStore) {
        this.f13617a = lifecycleOwner;
        ViewModelProvider.Factory factory = LoaderViewModel.f13624c;
        this.f13618b = (LoaderViewModel) new ViewModelProvider(viewModelStore, LoaderViewModel.f13624c).a(Reflection.f71922a.b(LoaderViewModel.class));
    }

    @Override // androidx.loader.app.LoaderManager
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        SparseArrayCompat sparseArrayCompat = this.f13618b.f13625a;
        if (sparseArrayCompat.e() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            for (int i2 = 0; i2 < sparseArrayCompat.e(); i2++) {
                LoaderInfo loaderInfo = (LoaderInfo) sparseArrayCompat.f(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(sparseArrayCompat.c(i2));
                printWriter.print(": ");
                printWriter.println(loaderInfo.toString());
                printWriter.print(str2);
                printWriter.print("mId=");
                printWriter.print(0);
                printWriter.print(" mArgs=");
                printWriter.println((Object) null);
                printWriter.print(str2);
                printWriter.print("mLoader=");
                Loader loader = loaderInfo.f13619a;
                printWriter.println(loader);
                loader.a(str2.concat("  "), fileDescriptor, printWriter, strArr);
                if (loaderInfo.f13621c != null) {
                    printWriter.print(str2);
                    printWriter.print("mCallbacks=");
                    printWriter.println(loaderInfo.f13621c);
                    LoaderObserver loaderObserver = loaderInfo.f13621c;
                    String strConcat = str2.concat("  ");
                    loaderObserver.getClass();
                    printWriter.print(strConcat);
                    printWriter.print("mDeliveredData=");
                    printWriter.println(loaderObserver.f13623c);
                }
                printWriter.print(str2);
                printWriter.print("mData=");
                D value = loaderInfo.getValue();
                StringBuilder sb = new StringBuilder(64);
                DebugUtils.a(value, sb);
                sb.append("}");
                printWriter.println(sb.toString());
                printWriter.print(str2);
                printWriter.print("mStarted=");
                printWriter.println(loaderInfo.hasActiveObservers());
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.loader.app.LoaderManager
    public final Loader c(LoaderManager.LoaderCallbacks loaderCallbacks) {
        LoaderViewModel loaderViewModel = this.f13618b;
        boolean z = loaderViewModel.f13626b;
        SparseArrayCompat sparseArrayCompat = loaderViewModel.f13625a;
        if (z) {
            md.k("Called while creating a loader");
            return null;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            md.k("initLoader must be called on the main thread");
            return null;
        }
        LoaderInfo loaderInfo = (LoaderInfo) sparseArrayCompat.b(0);
        LifecycleOwner lifecycleOwner = this.f13617a;
        if (loaderInfo != null) {
            Loader loader = loaderInfo.f13619a;
            LoaderObserver loaderObserver = new LoaderObserver(loader, loaderCallbacks);
            loaderInfo.observe(lifecycleOwner, loaderObserver);
            LoaderObserver loaderObserver2 = loaderInfo.f13621c;
            if (loaderObserver2 != null) {
                loaderInfo.removeObserver(loaderObserver2);
            }
            loaderInfo.f13620b = lifecycleOwner;
            loaderInfo.f13621c = loaderObserver;
            return loader;
        }
        try {
            loaderViewModel.f13626b = true;
            zbc zbcVarB = loaderCallbacks.b();
            if (zbc.class.isMemberClass() && !Modifier.isStatic(zbc.class.getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + zbcVarB);
            }
            LoaderInfo loaderInfo2 = new LoaderInfo(zbcVarB);
            sparseArrayCompat.d(0, loaderInfo2);
            loaderViewModel.f13626b = false;
            Loader loader2 = loaderInfo2.f13619a;
            LoaderObserver loaderObserver3 = new LoaderObserver(loader2, loaderCallbacks);
            loaderInfo2.observe(lifecycleOwner, loaderObserver3);
            LoaderObserver loaderObserver4 = loaderInfo2.f13621c;
            if (loaderObserver4 != null) {
                loaderInfo2.removeObserver(loaderObserver4);
            }
            loaderInfo2.f13620b = lifecycleOwner;
            loaderInfo2.f13621c = loaderObserver3;
            return loader2;
        } catch (Throwable th) {
            loaderViewModel.f13626b = false;
            throw th;
        }
    }

    @Override // androidx.loader.app.LoaderManager
    public final void d() {
        SparseArrayCompat sparseArrayCompat = this.f13618b.f13625a;
        int iE = sparseArrayCompat.e();
        for (int i2 = 0; i2 < iE; i2++) {
            ((LoaderInfo) sparseArrayCompat.f(i2)).b();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.a(this.f13617a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
