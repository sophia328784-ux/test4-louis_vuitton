.class public final enum Lorg/teleal/cling/model/message/UpnpMessage$BodyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/model/message/UpnpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BodyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/model/message/UpnpMessage$BodyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

.field public static final enum BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

.field public static final enum STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    new-instance v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    const-string v2, "BYTES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    filled-new-array {v0, v1}, [Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->$VALUES:[Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/message/UpnpMessage$BodyType;
    .locals 1

    const-class v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/model/message/UpnpMessage$BodyType;
    .locals 1

    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->$VALUES:[Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v0}, [Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    return-object v0
.end method
