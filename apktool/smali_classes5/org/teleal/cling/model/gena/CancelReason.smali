.class public final enum Lorg/teleal/cling/model/gena/CancelReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/model/gena/CancelReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/model/gena/CancelReason;

.field public static final enum DEVICE_WAS_REMOVED:Lorg/teleal/cling/model/gena/CancelReason;

.field public static final enum EXPIRED:Lorg/teleal/cling/model/gena/CancelReason;

.field public static final enum RENEWAL_FAILED:Lorg/teleal/cling/model/gena/CancelReason;

.field public static final enum UNSUBSCRIBE_FAILED:Lorg/teleal/cling/model/gena/CancelReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/teleal/cling/model/gena/CancelReason;

    const-string v1, "RENEWAL_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/model/gena/CancelReason;->RENEWAL_FAILED:Lorg/teleal/cling/model/gena/CancelReason;

    new-instance v1, Lorg/teleal/cling/model/gena/CancelReason;

    const-string v2, "DEVICE_WAS_REMOVED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/teleal/cling/model/gena/CancelReason;->DEVICE_WAS_REMOVED:Lorg/teleal/cling/model/gena/CancelReason;

    new-instance v2, Lorg/teleal/cling/model/gena/CancelReason;

    const-string v3, "UNSUBSCRIBE_FAILED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/teleal/cling/model/gena/CancelReason;->UNSUBSCRIBE_FAILED:Lorg/teleal/cling/model/gena/CancelReason;

    new-instance v3, Lorg/teleal/cling/model/gena/CancelReason;

    const-string v4, "EXPIRED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/teleal/cling/model/gena/CancelReason;->EXPIRED:Lorg/teleal/cling/model/gena/CancelReason;

    filled-new-array {v0, v1, v2, v3}, [Lorg/teleal/cling/model/gena/CancelReason;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/gena/CancelReason;->$VALUES:[Lorg/teleal/cling/model/gena/CancelReason;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/gena/CancelReason;
    .locals 1

    const-class v0, Lorg/teleal/cling/model/gena/CancelReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/gena/CancelReason;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/model/gena/CancelReason;
    .locals 1

    sget-object v0, Lorg/teleal/cling/model/gena/CancelReason;->$VALUES:[Lorg/teleal/cling/model/gena/CancelReason;

    invoke-virtual {v0}, [Lorg/teleal/cling/model/gena/CancelReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/gena/CancelReason;

    return-object v0
.end method
