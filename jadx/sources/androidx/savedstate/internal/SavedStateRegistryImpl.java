package androidx.savedstate.internal;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.it0;
import defpackage.k2;
import defpackage.md;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\tB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/savedstate/internal/SavedStateRegistryImpl;", "", "Landroidx/savedstate/SavedStateRegistryOwner;", "owner", "Lkotlin/Function0;", "", "onAttach", "<init>", "(Landroidx/savedstate/SavedStateRegistryOwner;Lkotlin/jvm/functions/Function0;)V", "Companion", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SavedStateRegistryImpl {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f19793i = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SavedStateRegistryOwner f19794a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f19795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SynchronizedObject f19796c;
    public final LinkedHashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f19797e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Bundle f19798f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f19799h;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/savedstate/internal/SavedStateRegistryImpl$Companion;", "", "", "SAVED_COMPONENTS_KEY", "Ljava/lang/String;", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public SavedStateRegistryImpl(SavedStateRegistryOwner savedStateRegistryOwner, Function0<Unit> function0) {
        savedStateRegistryOwner.getClass();
        function0.getClass();
        this.f19794a = savedStateRegistryOwner;
        this.f19795b = function0;
        this.f19796c = new SynchronizedObject();
        this.d = new LinkedHashMap();
        this.f19799h = true;
    }

    public final void a() {
        SavedStateRegistryOwner savedStateRegistryOwner = this.f19794a;
        if (savedStateRegistryOwner.getF13561b().getF13454i() != Lifecycle.State.INITIALIZED) {
            md.k("Restarter must be created only during owner's initialization stage");
        } else {
            if (this.f19797e) {
                md.k("SavedStateRegistry was already attached.");
                return;
            }
            this.f19795b.mo47invoke();
            savedStateRegistryOwner.getF13561b().a(new k2(this, 5));
            this.f19797e = true;
        }
    }

    public /* synthetic */ SavedStateRegistryImpl(SavedStateRegistryOwner savedStateRegistryOwner, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(savedStateRegistryOwner, (i2 & 2) != 0 ? new it0(3) : function0);
    }
}
