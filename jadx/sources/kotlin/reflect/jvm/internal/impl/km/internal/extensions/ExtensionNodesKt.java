package kotlin.reflect.jvm.internal.impl.km.internal.extensions;

import defpackage.a61;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ExtensionNodesKt {
    public static final KmExtension a(Collection collection, KmExtensionType kmExtensionType) {
        Iterator it = collection.iterator();
        KmExtension kmExtension = null;
        while (it.hasNext()) {
            KmExtension kmExtension2 = (KmExtension) it.next();
            if (Intrinsics.c(kmExtension2.getType(), kmExtensionType)) {
                if (kmExtension != null) {
                    a61.q(kmExtensionType, "Multiple extensions handle the same extension type: ");
                    return null;
                }
                kmExtension = kmExtension2;
            }
        }
        if (kmExtension != null) {
            return kmExtension;
        }
        a61.q(kmExtensionType, "No extensions handle the extension type: ");
        return null;
    }
}
