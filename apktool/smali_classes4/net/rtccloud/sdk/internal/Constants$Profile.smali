.class public final Lnet/rtccloud/sdk/internal/Constants$Profile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Profile"
.end annotation


# static fields
.field public static final HD:I = 0x3

.field public static final MD:I = 0x1

.field public static final MHD:I = 0x2

.field public static final SD:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "HD"

    return-object p0

    :cond_1
    const-string p0, "MHD"

    return-object p0

    :cond_2
    const-string p0, "MD"

    return-object p0

    :cond_3
    const-string p0, "SD"

    return-object p0
.end method
