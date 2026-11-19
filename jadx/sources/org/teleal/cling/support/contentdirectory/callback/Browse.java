package org.teleal.cling.support.contentdirectory.callback;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.cj;
import java.util.logging.Logger;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.model.action.ActionException;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.ErrorCode;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.support.contentdirectory.DIDLParser;
import org.teleal.cling.support.model.BrowseFlag;
import org.teleal.cling.support.model.BrowseResult;
import org.teleal.cling.support.model.DIDLContent;
import org.teleal.cling.support.model.SortCriterion;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Browse extends ActionCallback {
    public static final String CAPS_WILDCARD = "*";
    private static Logger log = Logger.getLogger(Browse.class.getName());

    public enum Status {
        NO_CONTENT("No Content"),
        LOADING("Loading..."),
        OK(Payload.RESPONSE_OK);

        private String defaultMessage;

        Status(String str) {
            this.defaultMessage = str;
        }
    }

    public Browse(Service service, String str, BrowseFlag browseFlag, String str2, long j2, Long l, SortCriterion... sortCriterionArr) {
        String string;
        super(new ActionInvocation(service.a("Browse")));
        log.fine("Creating browse action for object ID: " + str);
        getActionInvocation().b(str, "ObjectID");
        getActionInvocation().b(browseFlag.toString(), "BrowseFlag");
        getActionInvocation().b(str2, "Filter");
        getActionInvocation().b(new UnsignedIntegerFourBytes(j2), "StartingIndex");
        getActionInvocation().b(new UnsignedIntegerFourBytes(l == null ? getDefaultMaxResults() : l.longValue()), "RequestedCount");
        ActionInvocation actionInvocation = getActionInvocation();
        if (sortCriterionArr == null) {
            string = "";
        } else {
            StringBuilder sb = new StringBuilder();
            for (SortCriterion sortCriterion : sortCriterionArr) {
                sb.append(sortCriterion.toString());
                sb.append(",");
            }
            if (sb.toString().endsWith(",")) {
                sb.deleteCharAt(sb.length() - 1);
            }
            string = sb.toString();
        }
        actionInvocation.b(string, "SortCriteria");
    }

    public long getDefaultMaxResults() {
        return 999L;
    }

    public abstract void received(ActionInvocation actionInvocation, DIDLContent dIDLContent);

    public boolean receivedRaw(ActionInvocation actionInvocation, BrowseResult browseResult) {
        return true;
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback, java.lang.Runnable
    public void run() throws Throwable {
        updateStatus(Status.LOADING);
        super.run();
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
        log.fine("Successful browse action, reading output argument values");
        BrowseResult browseResult = new BrowseResult(actionInvocation.a("Result").f78394b.toString(), (UnsignedIntegerFourBytes) actionInvocation.a("NumberReturned").f78394b, (UnsignedIntegerFourBytes) actionInvocation.a("TotalMatches").f78394b, (UnsignedIntegerFourBytes) actionInvocation.a("UpdateID").f78394b);
        if (receivedRaw(actionInvocation, browseResult) && browseResult.f78565b.f78534a > 0) {
            String str = browseResult.f78564a;
            if (str.length() > 0) {
                try {
                    received(actionInvocation, new DIDLParser().d(str));
                    updateStatus(Status.OK);
                    return;
                } catch (Exception e2) {
                    actionInvocation.d = new ActionException(ErrorCode.ACTION_FAILED, cj.j("Can't parse DIDL XML response: ", e2), e2);
                    failure(actionInvocation, null);
                    return;
                }
            }
        }
        received(actionInvocation, new DIDLContent());
        updateStatus(Status.NO_CONTENT);
    }

    public abstract void updateStatus(Status status);

    public Browse(Service service, String str, BrowseFlag browseFlag) {
        this(service, str, browseFlag, CAPS_WILDCARD, 0L, null, new SortCriterion[0]);
    }
}
