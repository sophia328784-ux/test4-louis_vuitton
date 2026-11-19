package b;

import com.linkplay.medialib.ContentTree;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class d implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f20680b = ContentTree.ROOT_ID;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f20681c = 1;

    public final synchronized void a(int i2, String str) {
        try {
            int i3 = Integer.parseInt(str);
            int i4 = Integer.parseInt(this.f20680b);
            if (Math.abs(i4 - i3) > 60000) {
                this.f20680b = ContentTree.ROOT_ID;
                i4 = Integer.parseInt(ContentTree.ROOT_ID);
            }
            if (this.f20681c != i2 && (i3 >= i4 || i3 == 0)) {
                this.f20680b = str;
                this.f20681c = i2;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
