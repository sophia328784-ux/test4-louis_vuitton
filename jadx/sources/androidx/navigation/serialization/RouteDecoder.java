package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavType;
import defpackage.tg0;
import java.util.Map;
import kotlin.Metadata;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.AbstractDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.modules.SerialModuleImpl;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B-\b\u0016\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0005¢\u0006\u0004\b\t\u0010\nB)\b\u0016\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0005¢\u0006\u0004\b\t\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/navigation/serialization/RouteDecoder;", "Lkotlinx/serialization/encoding/AbstractDecoder;", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "bundle", "", "", "Landroidx/navigation/NavType;", "typeMap", "<init>", "(Landroid/os/Bundle;Ljava/util/Map;)V", "Landroidx/lifecycle/SavedStateHandle;", "handle", "(Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RouteDecoder extends AbstractDecoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArgStore f18366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f18368c;
    public final SerialModuleImpl d;

    public RouteDecoder(Bundle bundle, Map<String, ? extends NavType<?>> map) {
        bundle.getClass();
        map.getClass();
        this.f18367b = -1;
        this.f18368c = "";
        this.d = SerializersModuleKt.f75847a;
        this.f18366a = new SavedStateArgStore(bundle, map);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final Object D(DeserializationStrategy deserializationStrategy) {
        deserializationStrategy.getClass();
        return G();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder
    public final Object F() {
        return G();
    }

    public final Object G() {
        Object objB = this.f18366a.b(this.f18368c);
        if (objB != null) {
            return objB;
        }
        tg0.d(this.f18368c, "Unexpected null value for non-nullable argument ");
        return null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    /* JADX INFO: renamed from: a */
    public final SerializersModule getF75784b() {
        return this.d;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int n(SerialDescriptor serialDescriptor) {
        String strF;
        serialDescriptor.getClass();
        int i2 = this.f18367b;
        do {
            i2++;
            if (i2 >= serialDescriptor.getF75661c()) {
                return -1;
            }
            strF = serialDescriptor.f(i2);
        } while (!this.f18366a.a(strF));
        this.f18367b = i2;
        this.f18368c = strF;
        return i2;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final Decoder o(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (RouteSerializerKt.e(serialDescriptor)) {
            this.f18368c = serialDescriptor.f(0);
            this.f18367b = 0;
        }
        return this;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final boolean z() {
        return this.f18366a.b(this.f18368c) != null;
    }

    public RouteDecoder(SavedStateHandle savedStateHandle, Map<String, ? extends NavType<?>> map) {
        savedStateHandle.getClass();
        map.getClass();
        this.f18367b = -1;
        this.f18368c = "";
        this.d = SerializersModuleKt.f75847a;
        this.f18366a = new SavedStateHandleArgStore(savedStateHandle, map);
    }
}
