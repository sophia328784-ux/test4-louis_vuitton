package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Phonemetadata$PhoneMetadata implements Externalizable {
    private static final long serialVersionUID = 1;
    public boolean B;
    public boolean D;
    public boolean F;
    public boolean H;
    public boolean M;
    public boolean O;
    public boolean Q;
    public boolean S;
    public boolean V;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f35631b;
    public boolean d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f35634f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f35635h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f35637j;
    public boolean l;
    public boolean n;
    public boolean p;
    public boolean r;
    public boolean t;
    public boolean t0;
    public boolean v;
    public boolean x;
    public boolean z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Phonemetadata$PhoneNumberDesc f35632c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Phonemetadata$PhoneNumberDesc f35633e = null;
    public Phonemetadata$PhoneNumberDesc g = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Phonemetadata$PhoneNumberDesc f35636i = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Phonemetadata$PhoneNumberDesc f35638k = null;
    public Phonemetadata$PhoneNumberDesc m = null;
    public Phonemetadata$PhoneNumberDesc o = null;
    public Phonemetadata$PhoneNumberDesc q = null;
    public Phonemetadata$PhoneNumberDesc s = null;
    public Phonemetadata$PhoneNumberDesc u = null;
    public Phonemetadata$PhoneNumberDesc w = null;
    public Phonemetadata$PhoneNumberDesc y = null;
    public Phonemetadata$PhoneNumberDesc A = null;
    public Phonemetadata$PhoneNumberDesc C = null;
    public Phonemetadata$PhoneNumberDesc E = null;
    public Phonemetadata$PhoneNumberDesc G = null;
    public Phonemetadata$PhoneNumberDesc I = null;
    public String J = "";
    public int K = 0;
    public String L = "";
    public String N = "";
    public String P = "";
    public String R = "";
    public String T = "";
    public String W = "";
    public boolean X = false;
    public final ArrayList Y = new ArrayList();
    public final ArrayList Z = new ArrayList();
    public boolean h0 = false;
    public String b1 = "";
    public boolean c1 = false;

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc.readExternal(objectInput);
            this.f35631b = true;
            this.f35632c = phonemetadata$PhoneNumberDesc;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc2 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc2.readExternal(objectInput);
            this.d = true;
            this.f35633e = phonemetadata$PhoneNumberDesc2;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc3 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc3.readExternal(objectInput);
            this.f35634f = true;
            this.g = phonemetadata$PhoneNumberDesc3;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc4 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc4.readExternal(objectInput);
            this.f35635h = true;
            this.f35636i = phonemetadata$PhoneNumberDesc4;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc5 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc5.readExternal(objectInput);
            this.f35637j = true;
            this.f35638k = phonemetadata$PhoneNumberDesc5;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc6 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc6.readExternal(objectInput);
            this.l = true;
            this.m = phonemetadata$PhoneNumberDesc6;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc7 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc7.readExternal(objectInput);
            this.n = true;
            this.o = phonemetadata$PhoneNumberDesc7;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc8 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc8.readExternal(objectInput);
            this.p = true;
            this.q = phonemetadata$PhoneNumberDesc8;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc9 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc9.readExternal(objectInput);
            this.r = true;
            this.s = phonemetadata$PhoneNumberDesc9;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc10 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc10.readExternal(objectInput);
            this.t = true;
            this.u = phonemetadata$PhoneNumberDesc10;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc11 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc11.readExternal(objectInput);
            this.v = true;
            this.w = phonemetadata$PhoneNumberDesc11;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc12 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc12.readExternal(objectInput);
            this.x = true;
            this.y = phonemetadata$PhoneNumberDesc12;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc13 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc13.readExternal(objectInput);
            this.z = true;
            this.A = phonemetadata$PhoneNumberDesc13;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc14 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc14.readExternal(objectInput);
            this.B = true;
            this.C = phonemetadata$PhoneNumberDesc14;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc15 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc15.readExternal(objectInput);
            this.D = true;
            this.E = phonemetadata$PhoneNumberDesc15;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc16 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc16.readExternal(objectInput);
            this.F = true;
            this.G = phonemetadata$PhoneNumberDesc16;
        }
        if (objectInput.readBoolean()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc17 = new Phonemetadata$PhoneNumberDesc();
            phonemetadata$PhoneNumberDesc17.readExternal(objectInput);
            this.H = true;
            this.I = phonemetadata$PhoneNumberDesc17;
        }
        this.J = objectInput.readUTF();
        this.K = objectInput.readInt();
        this.L = objectInput.readUTF();
        if (objectInput.readBoolean()) {
            String utf = objectInput.readUTF();
            this.M = true;
            this.N = utf;
        }
        if (objectInput.readBoolean()) {
            String utf2 = objectInput.readUTF();
            this.O = true;
            this.P = utf2;
        }
        if (objectInput.readBoolean()) {
            String utf3 = objectInput.readUTF();
            this.Q = true;
            this.R = utf3;
        }
        if (objectInput.readBoolean()) {
            String utf4 = objectInput.readUTF();
            this.S = true;
            this.T = utf4;
        }
        if (objectInput.readBoolean()) {
            String utf5 = objectInput.readUTF();
            this.V = true;
            this.W = utf5;
        }
        this.X = objectInput.readBoolean();
        int i2 = objectInput.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            Phonemetadata$NumberFormat phonemetadata$NumberFormat = new Phonemetadata$NumberFormat();
            phonemetadata$NumberFormat.readExternal(objectInput);
            this.Y.add(phonemetadata$NumberFormat);
        }
        int i4 = objectInput.readInt();
        for (int i5 = 0; i5 < i4; i5++) {
            Phonemetadata$NumberFormat phonemetadata$NumberFormat2 = new Phonemetadata$NumberFormat();
            phonemetadata$NumberFormat2.readExternal(objectInput);
            this.Z.add(phonemetadata$NumberFormat2);
        }
        this.h0 = objectInput.readBoolean();
        if (objectInput.readBoolean()) {
            String utf6 = objectInput.readUTF();
            this.t0 = true;
            this.b1 = utf6;
        }
        this.c1 = objectInput.readBoolean();
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeBoolean(this.f35631b);
        if (this.f35631b) {
            this.f35632c.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.d);
        if (this.d) {
            this.f35633e.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f35634f);
        if (this.f35634f) {
            this.g.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f35635h);
        if (this.f35635h) {
            this.f35636i.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f35637j);
        if (this.f35637j) {
            this.f35638k.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.l);
        if (this.l) {
            this.m.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.n);
        if (this.n) {
            this.o.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.p);
        if (this.p) {
            this.q.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.r);
        if (this.r) {
            this.s.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.t);
        if (this.t) {
            this.u.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.v);
        if (this.v) {
            this.w.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.x);
        if (this.x) {
            this.y.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.z);
        if (this.z) {
            this.A.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.B);
        if (this.B) {
            this.C.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.D);
        if (this.D) {
            this.E.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.F);
        if (this.F) {
            this.G.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.H);
        if (this.H) {
            this.I.writeExternal(objectOutput);
        }
        objectOutput.writeUTF(this.J);
        objectOutput.writeInt(this.K);
        objectOutput.writeUTF(this.L);
        objectOutput.writeBoolean(this.M);
        if (this.M) {
            objectOutput.writeUTF(this.N);
        }
        objectOutput.writeBoolean(this.O);
        if (this.O) {
            objectOutput.writeUTF(this.P);
        }
        objectOutput.writeBoolean(this.Q);
        if (this.Q) {
            objectOutput.writeUTF(this.R);
        }
        objectOutput.writeBoolean(this.S);
        if (this.S) {
            objectOutput.writeUTF(this.T);
        }
        objectOutput.writeBoolean(this.V);
        if (this.V) {
            objectOutput.writeUTF(this.W);
        }
        objectOutput.writeBoolean(this.X);
        ArrayList arrayList = this.Y;
        int size = arrayList.size();
        objectOutput.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            ((Phonemetadata$NumberFormat) arrayList.get(i2)).writeExternal(objectOutput);
        }
        ArrayList arrayList2 = this.Z;
        int size2 = arrayList2.size();
        objectOutput.writeInt(size2);
        for (int i3 = 0; i3 < size2; i3++) {
            ((Phonemetadata$NumberFormat) arrayList2.get(i3)).writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.h0);
        objectOutput.writeBoolean(this.t0);
        if (this.t0) {
            objectOutput.writeUTF(this.b1);
        }
        objectOutput.writeBoolean(this.c1);
    }
}
