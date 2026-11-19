.class public final enum Lorg/teleal/cling/support/model/TransportStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/support/model/TransportStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/support/model/TransportStatus;

.field public static final enum CUSTOM:Lorg/teleal/cling/support/model/TransportStatus;

.field public static final enum ERROR_OCCURED:Lorg/teleal/cling/support/model/TransportStatus;

.field public static final enum OK:Lorg/teleal/cling/support/model/TransportStatus;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/teleal/cling/support/model/TransportStatus;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/TransportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportStatus;->OK:Lorg/teleal/cling/support/model/TransportStatus;

    new-instance v1, Lorg/teleal/cling/support/model/TransportStatus;

    const-string v2, "ERROR_OCCURED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/support/model/TransportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/teleal/cling/support/model/TransportStatus;->ERROR_OCCURED:Lorg/teleal/cling/support/model/TransportStatus;

    new-instance v2, Lorg/teleal/cling/support/model/TransportStatus;

    const-string v3, "CUSTOM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/support/model/TransportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/teleal/cling/support/model/TransportStatus;->CUSTOM:Lorg/teleal/cling/support/model/TransportStatus;

    filled-new-array {v0, v1, v2}, [Lorg/teleal/cling/support/model/TransportStatus;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/model/TransportStatus;->$VALUES:[Lorg/teleal/cling/support/model/TransportStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/support/model/TransportStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportStatus;
    .locals 1

    const-class v0, Lorg/teleal/cling/support/model/TransportStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/support/model/TransportStatus;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/support/model/TransportStatus;
    .locals 1

    sget-object v0, Lorg/teleal/cling/support/model/TransportStatus;->$VALUES:[Lorg/teleal/cling/support/model/TransportStatus;

    invoke-virtual {v0}, [Lorg/teleal/cling/support/model/TransportStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/support/model/TransportStatus;

    return-object v0
.end method
