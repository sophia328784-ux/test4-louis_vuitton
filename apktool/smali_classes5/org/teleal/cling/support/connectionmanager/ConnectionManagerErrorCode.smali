.class public final enum Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum ACCESS_DENIED:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum INCOMPATIBLE_DIRECTIONS:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum INCOMPATIBLE_PROTOCOL_INFO:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum INSUFFICIENT_NETWORK_RESOURCES:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum INVALID_CONNECTION_REFERENCE:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum LOCAL_RESTRICTIONS:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum NOT_IN_NETWORK:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/16 v1, 0x2bd

    const-string v2, "The connection cannot be established because the protocol info parameter is incompatible"

    const-string v3, "INCOMPATIBLE_PROTOCOL_INFO"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->INCOMPATIBLE_PROTOCOL_INFO:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    new-instance v1, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/16 v2, 0x2be

    const-string v3, "The connection cannot be established because the directions of the involved ConnectionManagers (source/sink) are incompatible"

    const-string v4, "INCOMPATIBLE_DIRECTIONS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->INCOMPATIBLE_DIRECTIONS:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    new-instance v2, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/16 v3, 0x2bf

    const-string v4, "The connection cannot be established because there are insufficient network resources"

    const-string v5, "INSUFFICIENT_NETWORK_RESOURCES"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->INSUFFICIENT_NETWORK_RESOURCES:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    new-instance v3, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/16 v4, 0x2c0

    const-string v5, "The connection cannot be established because of local restrictions in the device"

    const-string v6, "LOCAL_RESTRICTIONS"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->LOCAL_RESTRICTIONS:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    new-instance v4, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/16 v5, 0x2c1

    const-string v6, "The connection cannot be established because the client is not permitted."

    const-string v7, "ACCESS_DENIED"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->ACCESS_DENIED:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    new-instance v5, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/16 v6, 0x2c2

    const-string v7, "Not a valid connection established by this service"

    const-string v8, "INVALID_CONNECTION_REFERENCE"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->INVALID_CONNECTION_REFERENCE:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    new-instance v6, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/16 v7, 0x2c3

    const-string v8, "The connection cannot be established because the ConnectionManagers are not part of the same physical network."

    const-string v9, "NOT_IN_NETWORK"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v10, v7, v8}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->NOT_IN_NETWORK:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    filled-new-array/range {v0 .. v6}, [Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->$VALUES:[Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->code:I

    iput-object p4, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;
    .locals 1

    const-class v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;
    .locals 1

    sget-object v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->$VALUES:[Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    invoke-virtual {v0}, [Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->code:I

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->description:Ljava/lang/String;

    return-object p0
.end method
