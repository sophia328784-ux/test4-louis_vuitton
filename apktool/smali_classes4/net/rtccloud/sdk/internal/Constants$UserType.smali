.class public final Lnet/rtccloud/sdk/internal/Constants$UserType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserType"
.end annotation


# static fields
.field public static final EXTERNAL:I = 0x1

.field public static final INTERNAL:I = 0x0

.field public static final SIX_DIGITS:I = 0x6

.field public static final SUFFIX:I = 0x2


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

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "SIX_DIGITS"

    return-object p0

    :cond_1
    const-string p0, "SUFFIX"

    return-object p0

    :cond_2
    const-string p0, "EXTERNAL"

    return-object p0

    :cond_3
    const-string p0, "INTERNAL"

    return-object p0
.end method
