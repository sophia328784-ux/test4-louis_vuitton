package androidx.savedstate.serialization.serializers;

import android.os.Bundle;
import android.os.IBinder;
import androidx.savedstate.SavedStateReaderKt;
import androidx.savedstate.serialization.SavedStateDecoder;
import defpackage.b21;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/savedstate/serialization/serializers/IBinderSerializer;", "Lkotlinx/serialization/KSerializer;", "Landroid/os/IBinder;", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class IBinderSerializer implements KSerializer<IBinder> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SerialDescriptorImpl f19835a = SerialDescriptorsKt.d("android.os.IBinder", new SerialDescriptor[0]);

    public static IBinder f(Decoder decoder) {
        decoder.getClass();
        if (!(decoder instanceof SavedStateDecoder)) {
            b21.n(BuiltInSerializerKt.a(f19835a.f75547a, decoder));
            return null;
        }
        SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
        Bundle bundle = savedStateDecoder.f19822a;
        bundle.getClass();
        String str = savedStateDecoder.f19824c;
        str.getClass();
        IBinder binder = bundle.getBinder(str);
        if (binder != null) {
            return binder;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }
}
