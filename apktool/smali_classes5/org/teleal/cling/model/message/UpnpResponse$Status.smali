.class public final enum Lorg/teleal/cling/model/message/UpnpResponse$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/model/message/UpnpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/model/message/UpnpResponse$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum BAD_REQUEST:Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum METHOD_NOT_SUPPORTED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum NOT_FOUND:Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum NOT_IMPLEMENTED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum OK:Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Lorg/teleal/cling/model/message/UpnpResponse$Status;


# instance fields
.field private statusCode:I

.field private statusMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v3, v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->OK:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    new-instance v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const/16 v2, 0x190

    const-string v3, "Bad Request"

    const-string v4, "BAD_REQUEST"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->BAD_REQUEST:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    new-instance v2, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const/16 v3, 0x194

    const-string v4, "Not Found"

    const-string v5, "NOT_FOUND"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/teleal/cling/model/message/UpnpResponse$Status;->NOT_FOUND:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    new-instance v3, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const/16 v4, 0x195

    const-string v5, "Method Not Supported"

    const-string v6, "METHOD_NOT_SUPPORTED"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/teleal/cling/model/message/UpnpResponse$Status;->METHOD_NOT_SUPPORTED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    new-instance v4, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const/16 v5, 0x19c

    const-string v6, "Precondition Failed"

    const-string v7, "PRECONDITION_FAILED"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    new-instance v5, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const/16 v6, 0x19f

    const-string v7, "Unsupported Media Type"

    const-string v8, "UNSUPPORTED_MEDIA_TYPE"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/teleal/cling/model/message/UpnpResponse$Status;->UNSUPPORTED_MEDIA_TYPE:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    new-instance v6, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const/16 v7, 0x1f4

    const-string v8, "Internal Server Error"

    const-string v9, "INTERNAL_SERVER_ERROR"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v10, v7, v8}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    new-instance v7, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const/16 v8, 0x1f5

    const-string v9, "Not Implemented"

    const-string v10, "NOT_IMPLEMENTED"

    const/4 v11, 0x7

    invoke-direct {v7, v10, v11, v8, v9}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/teleal/cling/model/message/UpnpResponse$Status;->NOT_IMPLEMENTED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    filled-new-array/range {v0 .. v7}, [Lorg/teleal/cling/model/message/UpnpResponse$Status;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->$VALUES:[Lorg/teleal/cling/model/message/UpnpResponse$Status;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->statusCode:I

    iput-object p4, p0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->statusMsg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/message/UpnpResponse$Status;
    .locals 1

    const-class v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/model/message/UpnpResponse$Status;
    .locals 1

    sget-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->$VALUES:[Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-virtual {v0}, [Lorg/teleal/cling/model/message/UpnpResponse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/message/UpnpResponse$Status;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->statusCode:I

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->statusMsg:Ljava/lang/String;

    return-object p0
.end method
