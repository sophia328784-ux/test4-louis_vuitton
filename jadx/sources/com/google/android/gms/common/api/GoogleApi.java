package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Looper;
import androidx.collection.ArraySet;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.LifecycleActivity;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RegisterListenerMethod;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.UnregisterListenerMethod;
import com.google.android.gms.common.api.internal.zaab;
import com.google.android.gms.common.api.internal.zabq;
import com.google.android.gms.common.api.internal.zacc;
import com.google.android.gms.common.api.internal.zacd;
import com.google.android.gms.common.api.internal.zae;
import com.google.android.gms.common.api.internal.zaf;
import com.google.android.gms.common.api.internal.zag;
import com.google.android.gms.common.api.internal.zah;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.AttributionSourceWrapper;
import com.google.android.gms.internal.base.zao;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.az;
import defpackage.md;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Collections;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GoogleApi<O extends Api.ApiOptions> implements HasApiKey<O> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f28985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AttributionSourceWrapper f28987c;
    public final Api d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Api.ApiOptions f28988e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ApiKey f28989f;
    public final Looper g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f28990h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final zabq f28991i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final StatusExceptionMapper f28992j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GoogleApiManager f28993k;

    public static class Settings {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Settings f28994c = new Builder().a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final StatusExceptionMapper f28995a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Looper f28996b;

        public static class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public StatusExceptionMapper f28997a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public Looper f28998b;

            public final Settings a() {
                if (this.f28997a == null) {
                    this.f28997a = new ApiExceptionMapper();
                }
                if (this.f28998b == null) {
                    this.f28998b = Looper.getMainLooper();
                }
                return new Settings(this.f28997a, this.f28998b);
            }
        }

        public Settings(StatusExceptionMapper statusExceptionMapper, Looper looper) {
            this.f28995a = statusExceptionMapper;
            this.f28996b = looper;
        }
    }

    public GoogleApi(Context context, Activity activity, Api api, Api.ApiOptions apiOptions, Settings settings) {
        com.google.android.gms.common.api.internal.zza zzaVar;
        LifecycleFragment lifecycleFragment;
        com.google.android.gms.common.api.internal.zzd zzdVar;
        com.google.android.gms.common.api.internal.zzd zzdVar2;
        Preconditions.i(context, "Null context is not permitted.");
        Preconditions.i(api, "Api must not be null.");
        Preconditions.i(settings, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = context.getApplicationContext();
        Preconditions.i(applicationContext, "The provided context did not have an application context.");
        this.f28985a = applicationContext;
        int i2 = Build.VERSION.SDK_INT;
        String attributionTag = i2 >= 30 ? ContextCompat.getAttributionTag(context) : null;
        this.f28986b = attributionTag;
        this.f28987c = i2 >= 31 ? new AttributionSourceWrapper(context.getAttributionSource()) : null;
        this.d = api;
        this.f28988e = apiOptions;
        this.g = settings.f28996b;
        ApiKey apiKey = new ApiKey(api, apiOptions, attributionTag);
        this.f28989f = apiKey;
        this.f28991i = new zabq(this);
        GoogleApiManager googleApiManagerE = GoogleApiManager.e(applicationContext);
        this.f28993k = googleApiManagerE;
        this.f28990h = googleApiManagerE.f29032i.getAndIncrement();
        this.f28992j = settings.f28995a;
        if (activity != null && !(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            Activity activity2 = new LifecycleActivity(activity).f29035a;
            if (activity2 instanceof FragmentActivity) {
                FragmentActivity fragmentActivity = (FragmentActivity) activity2;
                WeakHashMap weakHashMap = com.google.android.gms.common.api.internal.zzd.B;
                FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
                WeakHashMap weakHashMap2 = com.google.android.gms.common.api.internal.zzd.B;
                WeakReference weakReference = (WeakReference) weakHashMap2.get(fragmentActivity);
                if (weakReference == null || (zzdVar2 = (com.google.android.gms.common.api.internal.zzd) weakReference.get()) == null) {
                    try {
                        lifecycleFragment = zzdVar2;
                        com.google.android.gms.common.api.internal.zzd zzdVar3 = (com.google.android.gms.common.api.internal.zzd) supportFragmentManager.G("SLifecycleFragmentImpl");
                        if (zzdVar3 == null || zzdVar3.isRemoving()) {
                            zzdVar = zzdVar3;
                            com.google.android.gms.common.api.internal.zzd zzdVar4 = new com.google.android.gms.common.api.internal.zzd();
                            FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
                            fragmentTransactionD.i(0, zzdVar4, "SLifecycleFragmentImpl", 1);
                            fragmentTransactionD.f();
                            zzdVar = zzdVar4;
                        }
                        zzdVar = zzdVar3;
                        weakHashMap2.put(fragmentActivity, new WeakReference(zzdVar));
                        lifecycleFragment = zzdVar;
                    } catch (ClassCastException e2) {
                        az.s("Fragment with tag SLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e2);
                        throw null;
                    }
                }
            } else {
                if (activity2 == null) {
                    md.n("Can't get fragment for unexpected activity.");
                    throw null;
                }
                WeakHashMap weakHashMap3 = com.google.android.gms.common.api.internal.zza.f29131c;
                WeakReference weakReference2 = (WeakReference) weakHashMap3.get(activity2);
                if (weakReference2 == null || (zzaVar = (com.google.android.gms.common.api.internal.zza) weakReference2.get()) == null) {
                    try {
                        lifecycleFragment = zzaVar;
                        com.google.android.gms.common.api.internal.zza zzaVar2 = (com.google.android.gms.common.api.internal.zza) activity2.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
                        if (zzaVar2 == null || zzaVar2.isRemoving()) {
                            zzaVar2 = new com.google.android.gms.common.api.internal.zza();
                            activity2.getFragmentManager().beginTransaction().add(zzaVar2, "LifecycleFragmentImpl").commitAllowingStateLoss();
                        }
                        com.google.android.gms.common.api.internal.zza zzaVar3 = zzaVar2;
                        weakHashMap3.put(activity2, new WeakReference(zzaVar3));
                        lifecycleFragment = zzaVar3;
                    } catch (ClassCastException e3) {
                        az.s("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e3);
                        throw null;
                    }
                }
            }
            lifecycleFragment = zzaVar;
            lifecycleFragment = zzdVar2;
            zaab zaabVar = (zaab) lifecycleFragment.w();
            zaabVar = zaabVar == null ? new zaab(lifecycleFragment, googleApiManagerE, GoogleApiAvailability.f28961e) : zaabVar;
            zaabVar.g.add(apiKey);
            googleApiManagerE.f(zaabVar);
        }
        zao zaoVar = googleApiManagerE.o;
        zaoVar.sendMessage(zaoVar.obtainMessage(7, this));
    }

    @Override // com.google.android.gms.common.api.HasApiKey
    public final ApiKey d() {
        return this.f28989f;
    }

    public final ClientSettings.Builder e() {
        GoogleSignInAccount googleSignInAccountH1;
        GoogleSignInAccount googleSignInAccountH2;
        ClientSettings.Builder builder = new ClientSettings.Builder();
        Api.ApiOptions apiOptions = this.f28988e;
        boolean z = apiOptions instanceof Api.ApiOptions.HasGoogleSignInAccountOptions;
        Account accountO1 = null;
        if (z && (googleSignInAccountH2 = ((Api.ApiOptions.HasGoogleSignInAccountOptions) apiOptions).h1()) != null) {
            String str = googleSignInAccountH2.d;
            if (str != null) {
                accountO1 = new Account(str, "com.google");
            }
        } else if (apiOptions instanceof Api.ApiOptions.HasAccountOptions) {
            accountO1 = ((Api.ApiOptions.HasAccountOptions) apiOptions).o1();
        }
        builder.f29171a = accountO1;
        Collection collectionW1 = (!z || (googleSignInAccountH1 = ((Api.ApiOptions.HasGoogleSignInAccountOptions) apiOptions).h1()) == null) ? Collections.EMPTY_SET : googleSignInAccountH1.W1();
        if (builder.f29172b == null) {
            builder.f29172b = new ArraySet();
        }
        builder.f29172b.addAll(collectionW1);
        Context context = this.f28985a;
        builder.d = context.getClass().getName();
        builder.f29173c = context.getPackageName();
        return builder;
    }

    public final Task f(RegistrationMethods registrationMethods) {
        Preconditions.i(registrationMethods.f29052a.f29049a.f29038b, "Listener has already been released.");
        UnregisterListenerMethod unregisterListenerMethod = registrationMethods.f29053b;
        Preconditions.i(unregisterListenerMethod.f29066a, "Listener has already been released.");
        RegisterListenerMethod registerListenerMethod = registrationMethods.f29052a;
        Runnable runnable = registrationMethods.f29054c;
        GoogleApiManager googleApiManager = this.f28993k;
        googleApiManager.getClass();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        googleApiManager.c(taskCompletionSource, registerListenerMethod.d, this);
        zacc zaccVar = new zacc(new zaf(new zacd(registerListenerMethod, unregisterListenerMethod, runnable), taskCompletionSource), googleApiManager.f29033j.get(), this);
        zao zaoVar = googleApiManager.o;
        zaoVar.sendMessage(zaoVar.obtainMessage(8, zaccVar));
        return taskCompletionSource.f32085a;
    }

    public final Task g(ListenerHolder.ListenerKey listenerKey, int i2) {
        Preconditions.i(listenerKey, "Listener key cannot be null.");
        GoogleApiManager googleApiManager = this.f28993k;
        googleApiManager.getClass();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        googleApiManager.c(taskCompletionSource, i2, this);
        zacc zaccVar = new zacc(new zah(listenerKey, taskCompletionSource), googleApiManager.f29033j.get(), this);
        zao zaoVar = googleApiManager.o;
        zaoVar.sendMessage(zaoVar.obtainMessage(13, zaccVar));
        return taskCompletionSource.f32085a;
    }

    public final void h(int i2, BaseImplementation$ApiMethodImpl baseImplementation$ApiMethodImpl) {
        boolean z = true;
        if (!baseImplementation$ApiMethodImpl.f29026i && !((Boolean) BasePendingResult.f29019j.get()).booleanValue()) {
            z = false;
        }
        baseImplementation$ApiMethodImpl.f29026i = z;
        GoogleApiManager googleApiManager = this.f28993k;
        googleApiManager.getClass();
        zacc zaccVar = new zacc(new zae(i2, baseImplementation$ApiMethodImpl), googleApiManager.f29033j.get(), this);
        zao zaoVar = googleApiManager.o;
        zaoVar.sendMessage(zaoVar.obtainMessage(4, zaccVar));
    }

    public final Task i(int i2, TaskApiCall taskApiCall) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        GoogleApiManager googleApiManager = this.f28993k;
        googleApiManager.getClass();
        googleApiManager.c(taskCompletionSource, taskApiCall.f29062c, this);
        zacc zaccVar = new zacc(new zag(i2, taskApiCall, taskCompletionSource, this.f28992j), googleApiManager.f29033j.get(), this);
        zao zaoVar = googleApiManager.o;
        zaoVar.sendMessage(zaoVar.obtainMessage(4, zaccVar));
        return taskCompletionSource.f32085a;
    }

    @Deprecated
    public GoogleApi(Activity activity, Api<O> api, O o, StatusExceptionMapper statusExceptionMapper) {
        Settings.Builder builder = new Settings.Builder();
        Preconditions.i(statusExceptionMapper, "StatusExceptionMapper must not be null.");
        builder.f28997a = statusExceptionMapper;
        Looper mainLooper = activity.getMainLooper();
        Preconditions.i(mainLooper, "Looper must not be null.");
        builder.f28998b = mainLooper;
        this(activity, (Api) api, (Api.ApiOptions) o, builder.a());
    }

    public GoogleApi(Activity activity, Api<O> api, O o, Settings settings) {
        this(activity, activity, api, o, settings);
    }

    public GoogleApi(Context context, Api<O> api, O o, Settings settings) {
        this(context, null, api, o, settings);
    }

    @Deprecated
    public GoogleApi(Context context, Api<O> api, O o, StatusExceptionMapper statusExceptionMapper) {
        Settings.Builder builder = new Settings.Builder();
        Preconditions.i(statusExceptionMapper, "StatusExceptionMapper must not be null.");
        builder.f28997a = statusExceptionMapper;
        this(context, api, o, builder.a());
    }
}
