package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;", "Lkotlinx/serialization/json/internal/Composer;", "Lkotlinx/serialization/json/internal/InternalJsonWriter;", "writer", "", "forceQuoting", "<init>", "(Lkotlinx/serialization/json/internal/InternalJsonWriter;Z)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ComposerForUnsignedNumbers extends Composer {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f75780c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposerForUnsignedNumbers(InternalJsonWriter internalJsonWriter, boolean z) {
        super(internalJsonWriter);
        internalJsonWriter.getClass();
        this.f75780c = z;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void d(byte b2) {
        if (this.f75780c) {
            UByte.Companion companion = UByte.INSTANCE;
            j(String.valueOf(b2 & 255));
        } else {
            UByte.Companion companion2 = UByte.INSTANCE;
            h(String.valueOf(b2 & 255));
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void f(int i2) {
        if (this.f75780c) {
            UInt.Companion companion = UInt.INSTANCE;
            j(Integer.toUnsignedString(i2));
        } else {
            UInt.Companion companion2 = UInt.INSTANCE;
            h(Integer.toUnsignedString(i2));
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void g(long j2) {
        if (this.f75780c) {
            ULong.Companion companion = ULong.INSTANCE;
            j(Long.toUnsignedString(j2));
        } else {
            ULong.Companion companion2 = ULong.INSTANCE;
            h(Long.toUnsignedString(j2));
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void i(short s) {
        if (this.f75780c) {
            UShort.Companion companion = UShort.INSTANCE;
            j(String.valueOf(s & HPKE.aead_EXPORT_ONLY));
        } else {
            UShort.Companion companion2 = UShort.INSTANCE;
            h(String.valueOf(s & HPKE.aead_EXPORT_ONLY));
        }
    }
}
