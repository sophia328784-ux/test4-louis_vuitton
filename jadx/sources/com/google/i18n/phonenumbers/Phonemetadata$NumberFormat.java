package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Phonemetadata$NumberFormat implements Externalizable {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f35627e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f35629h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f35625b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f35626c = "";
    public final ArrayList d = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f35628f = "";
    public boolean g = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f35630i = "";

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        this.f35625b = objectInput.readUTF();
        this.f35626c = objectInput.readUTF();
        int i2 = objectInput.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            this.d.add(objectInput.readUTF());
        }
        if (objectInput.readBoolean()) {
            String utf = objectInput.readUTF();
            this.f35627e = true;
            this.f35628f = utf;
        }
        if (objectInput.readBoolean()) {
            String utf2 = objectInput.readUTF();
            this.f35629h = true;
            this.f35630i = utf2;
        }
        this.g = objectInput.readBoolean();
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeUTF(this.f35625b);
        objectOutput.writeUTF(this.f35626c);
        ArrayList arrayList = this.d;
        int size = arrayList.size();
        objectOutput.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            objectOutput.writeUTF((String) arrayList.get(i2));
        }
        objectOutput.writeBoolean(this.f35627e);
        if (this.f35627e) {
            objectOutput.writeUTF(this.f35628f);
        }
        objectOutput.writeBoolean(this.f35629h);
        if (this.f35629h) {
            objectOutput.writeUTF(this.f35630i);
        }
        objectOutput.writeBoolean(this.g);
    }
}
