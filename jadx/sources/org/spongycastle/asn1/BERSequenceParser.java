package org.spongycastle.asn1;

import defpackage.md;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class BERSequenceParser implements ASN1SequenceParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1StreamParser f77734b;

    public BERSequenceParser(ASN1StreamParser aSN1StreamParser) {
        this.f77734b = aSN1StreamParser;
    }

    @Override // org.spongycastle.asn1.InMemoryRepresentable
    public final ASN1Primitive getLoadedObject() {
        return new BERSequence(this.f77734b.c());
    }

    @Override // org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e2) {
            md.k(e2.getMessage());
            return null;
        }
    }
}
