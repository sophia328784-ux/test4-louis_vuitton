package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.Hex;
import com.github.druk.dnssd.NSType;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import defpackage.fc;
import java.nio.ByteBuffer;
import java.util.logging.Logger;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.math.Primes;

/* JADX INFO: loaded from: classes2.dex */
@Descriptor(tags = {19, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, CertificateBody.profileType, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, Sink.ORIENTATION_180, 181, 182, 183, 184, ModuleDescriptor.MODULE_VERSION, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, Primes.SMALL_FACTOR_LIMIT, 212, 213, 214, 215, 216, 217, com.google.android.gms.dynamite.descriptors.com.google.android.gms.tagmanager.ModuleDescriptor.MODULE_VERSION, 219, 220, 221, 222, 223, BERTags.FLAGS, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, NSType.TKEY, 250, NSType.IXFR, NSType.AXFR, NSType.MAILB})
public class ExtensionDescriptor extends BaseDescriptor {
    public byte[] d;

    static {
        Logger.getLogger(ExtensionDescriptor.class.getName());
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final void b(ByteBuffer byteBuffer) {
        if (a() > 0) {
            byte[] bArr = new byte[this.f35710b];
            this.d = bArr;
            byteBuffer.get(bArr);
        }
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final String toString() {
        StringBuilder sb = new StringBuilder("ExtensionDescriptor{bytes=");
        byte[] bArr = this.d;
        return fc.l(sb, bArr == null ? "null" : Hex.a(0, bArr), '}');
    }
}
