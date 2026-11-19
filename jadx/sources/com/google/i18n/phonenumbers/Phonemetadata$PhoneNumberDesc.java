package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Phonemetadata$PhoneNumberDesc implements Externalizable {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f35640b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f35643f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f35641c = "";
    public final ArrayList d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f35642e = new ArrayList();
    public String g = "";

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        if (objectInput.readBoolean()) {
            String utf = objectInput.readUTF();
            this.f35640b = true;
            this.f35641c = utf;
        }
        int i2 = objectInput.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            this.d.add(Integer.valueOf(objectInput.readInt()));
        }
        int i4 = objectInput.readInt();
        for (int i5 = 0; i5 < i4; i5++) {
            this.f35642e.add(Integer.valueOf(objectInput.readInt()));
        }
        if (objectInput.readBoolean()) {
            String utf2 = objectInput.readUTF();
            this.f35643f = true;
            this.g = utf2;
        }
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeBoolean(this.f35640b);
        if (this.f35640b) {
            objectOutput.writeUTF(this.f35641c);
        }
        ArrayList arrayList = this.d;
        int size = arrayList.size();
        objectOutput.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            objectOutput.writeInt(((Integer) arrayList.get(i2)).intValue());
        }
        ArrayList arrayList2 = this.f35642e;
        int size2 = arrayList2.size();
        objectOutput.writeInt(size2);
        for (int i3 = 0; i3 < size2; i3++) {
            objectOutput.writeInt(((Integer) arrayList2.get(i3)).intValue());
        }
        objectOutput.writeBoolean(this.f35643f);
        if (this.f35643f) {
            objectOutput.writeUTF(this.g);
        }
    }
}
