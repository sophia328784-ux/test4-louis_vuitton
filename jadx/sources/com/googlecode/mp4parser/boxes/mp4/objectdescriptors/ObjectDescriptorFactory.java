package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.IsoTypeReader;
import defpackage.x1;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes2.dex */
public class ObjectDescriptorFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f35730a = Logger.getLogger(ObjectDescriptorFactory.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f35731b = new HashMap();

    static {
        HashSet<Class> hashSet = new HashSet();
        hashSet.add(DecoderSpecificInfo.class);
        hashSet.add(SLConfigDescriptor.class);
        hashSet.add(BaseDescriptor.class);
        hashSet.add(ExtensionDescriptor.class);
        hashSet.add(ObjectDescriptorBase.class);
        hashSet.add(ProfileLevelIndicationDescriptor.class);
        hashSet.add(AudioSpecificConfig.class);
        hashSet.add(ExtensionProfileLevelDescriptor.class);
        hashSet.add(ESDescriptor.class);
        hashSet.add(DecoderConfigDescriptor.class);
        for (Class cls : hashSet) {
            Descriptor descriptor = (Descriptor) cls.getAnnotation(Descriptor.class);
            int[] iArrTags = descriptor.tags();
            int iObjectTypeIndication = descriptor.objectTypeIndication();
            Map map = (Map) f35731b.get(Integer.valueOf(iObjectTypeIndication));
            if (map == null) {
                map = new HashMap();
            }
            for (int i2 : iArrTags) {
                map.put(Integer.valueOf(i2), cls);
            }
            f35731b.put(Integer.valueOf(iObjectTypeIndication), map);
        }
    }

    public static BaseDescriptor a(int i2, ByteBuffer byteBuffer) {
        BaseDescriptor unknownDescriptor;
        int iJ = IsoTypeReader.j(byteBuffer);
        Integer numValueOf = Integer.valueOf(i2);
        HashMap map = f35731b;
        Map map2 = (Map) map.get(numValueOf);
        if (map2 == null) {
            map2 = (Map) map.get(-1);
        }
        Class cls = (Class) map2.get(Integer.valueOf(iJ));
        Logger logger = f35730a;
        if (cls == null || cls.isInterface() || Modifier.isAbstract(cls.getModifiers())) {
            logger.warning("No ObjectDescriptor found for objectTypeIndication " + Integer.toHexString(i2) + " and tag " + Integer.toHexString(iJ) + " found: " + cls);
            unknownDescriptor = new UnknownDescriptor();
        } else {
            try {
                unknownDescriptor = (BaseDescriptor) cls.newInstance();
            } catch (Exception e2) {
                logger.log(Level.SEVERE, "Couldn't instantiate BaseDescriptor class " + cls + " for objectTypeIndication " + i2 + " and tag " + iJ, (Throwable) e2);
                x1.m(e2);
                return null;
            }
        }
        unknownDescriptor.f35709a = iJ;
        int iA = IsoTypeReader.a(byteBuffer.get());
        unknownDescriptor.f35710b = iA & CertificateBody.profileType;
        int i3 = 1;
        while ((iA >>> 7) == 1) {
            iA = IsoTypeReader.a(byteBuffer.get());
            i3++;
            unknownDescriptor.f35710b = (unknownDescriptor.f35710b << 7) | (iA & CertificateBody.profileType);
        }
        unknownDescriptor.f35711c = i3;
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        byteBufferSlice.limit(unknownDescriptor.f35710b);
        unknownDescriptor.b(byteBufferSlice);
        byteBuffer.position(byteBuffer.position() + unknownDescriptor.f35710b);
        return unknownDescriptor;
    }
}
