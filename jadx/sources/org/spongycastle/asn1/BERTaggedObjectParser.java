package org.spongycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class BERTaggedObjectParser implements ASN1TaggedObjectParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f77736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f77737c;
    public final ASN1StreamParser d;

    public BERTaggedObjectParser(boolean z, int i2, ASN1StreamParser aSN1StreamParser) {
        this.f77736b = z;
        this.f77737c = i2;
        this.d = aSN1StreamParser;
    }

    @Override // org.spongycastle.asn1.InMemoryRepresentable
    public final ASN1Primitive getLoadedObject() {
        boolean z = this.f77736b;
        return this.d.b(this.f77737c, z);
    }

    @Override // org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e2) {
            throw new ASN1ParsingException(e2.getMessage());
        }
    }
}
