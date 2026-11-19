package org.teleal.cling.model;

import com.android.wiimu.model.IWiimuPlayQueueType;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.medialib.ContentTree;
import defpackage.md;
import defpackage.tr;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.logging.Logger;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.LocalDevice;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.resource.Resource;
import org.teleal.cling.model.types.ServiceId;
import org.teleal.common.util.URIUtil;

/* JADX INFO: loaded from: classes5.dex */
public class Namespace {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f78379b = Logger.getLogger(Namespace.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final URI f78380a;

    public Namespace() {
        this.f78380a = URI.create("");
    }

    public final URI a(LocalDevice localDevice) {
        StringBuilder sb = new StringBuilder();
        if (!localDevice.n()) {
            while (true) {
                Device device = localDevice.f78449h;
                if (device == null) {
                    break;
                }
                localDevice = (LocalDevice) device;
            }
        }
        sb.append(c(localDevice).toString());
        sb.append("/desc.xml");
        return URI.create(sb.toString());
    }

    public final URI b(Service service) {
        return URI.create(d(service).toString() + "/event");
    }

    public final URI c(Device device) {
        if (device.f78444a.f78458a == null) {
            md.k("Can't generate local URI prefix without UDN");
            return null;
        }
        StringBuilder sb = new StringBuilder("/dev/");
        String strH = tr.h(device.f78444a.f78458a.f78532a, IWiimuPlayQueueType.ExtLocalPreffix, LPDeviceManager.getInstance().getContext().getPackageName());
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(strH.toString().getBytes());
            if (bArrDigest == null || bArrDigest.length <= 0) {
                try {
                    sb.append(URIUtil.c(strH, URIUtil.f78649a));
                } catch (UnsupportedEncodingException e2) {
                    throw new RuntimeException(e2);
                }
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                for (byte b2 : bArrDigest) {
                    String hexString = Integer.toHexString(b2 & 255);
                    if (hexString.length() == 1) {
                        hexString = ContentTree.ROOT_ID + hexString;
                    }
                    stringBuffer.append(hexString);
                }
                try {
                    sb.append(URIUtil.c(stringBuffer.toString(), URIUtil.f78649a));
                } catch (UnsupportedEncodingException e3) {
                    throw new RuntimeException(e3);
                }
            }
        } catch (NoSuchAlgorithmException e4) {
            e4.printStackTrace();
        }
        return URI.create(this.f78380a.toString() + sb.toString());
    }

    public final URI d(Service service) {
        ServiceId serviceId = service.f78480b;
        ServiceId serviceId2 = service.f78480b;
        if (serviceId == null) {
            md.k("Can't generate local URI prefix without service ID");
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(c(service.f78482e).toString());
        sb.append("/svc/" + serviceId2.f78519a + "/" + serviceId2.f78520b);
        return URI.create(sb.toString());
    }

    public final Resource[] e(Device device) throws ValidationException {
        if (!device.n()) {
            return null;
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        Logger logger = f78379b;
        logger.fine("Discovering local resources of device graph");
        for (Resource resource : device.a(this)) {
            logger.finer("Discovered: " + resource);
            if (!hashSet.add(resource)) {
                logger.finer("Local resource already exists, queueing validation error");
                arrayList.add(new ValidationError(getClass(), "resources", "Local URI namespace conflict between resources of device: " + resource));
            }
        }
        if (arrayList.size() <= 0) {
            return (Resource[]) hashSet.toArray(new Resource[hashSet.size()]);
        }
        throw new ValidationException("Validation of device graph failed, call getErrors() on exception", arrayList);
    }

    public Namespace(String str) {
        this(URI.create(str));
    }

    public Namespace(URI uri) {
        this.f78380a = uri;
    }
}
