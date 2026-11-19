package com.sightcall.universal.util;

import com.sightcall.session.Reference;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.model.Session;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"updateFromReference", "Lcom/sightcall/universal/model/Config;", "reference", "Lcom/sightcall/session/Reference;", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ConfigUtilsKt {
    public static final Config updateFromReference(Config config, Reference reference) {
        Session.Role role;
        config.getClass();
        reference.getClass();
        config.authorizationToken = reference.authorizationToken;
        config.hash(reference.authorizationHash);
        config.urlAnnotation(reference.provider.annotationUrl);
        Reference.UserRole userRole = reference.useCase.userRole;
        if (Intrinsics.c(userRole, Reference.UserRole.Attendee.INSTANCE)) {
            role = Session.Role.ATTENDEE;
        } else {
            if (!Intrinsics.c(userRole, Reference.UserRole.Guest.INSTANCE)) {
                v40.g();
                return null;
            }
            role = Session.Role.GUEST;
        }
        config.role(role);
        config.mpi(reference.useCase.rtccMpi);
        return config;
    }
}
