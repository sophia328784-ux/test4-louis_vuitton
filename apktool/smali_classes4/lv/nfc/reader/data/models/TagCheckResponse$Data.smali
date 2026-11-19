.class public Llv/nfc/reader/data/models/TagCheckResponse$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv/nfc/reader/data/models/TagCheckResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private apdu:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "APDU"
    .end annotation
.end field

.field private connectionId:Ljava/lang/String;

.field final synthetic this$0:Llv/nfc/reader/data/models/TagCheckResponse;


# direct methods
.method public constructor <init>(Llv/nfc/reader/data/models/TagCheckResponse;)V
    .locals 0

    iput-object p1, p0, Llv/nfc/reader/data/models/TagCheckResponse$Data;->this$0:Llv/nfc/reader/data/models/TagCheckResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApdu()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/models/TagCheckResponse$Data;->apdu:Ljava/lang/String;

    return-object p0
.end method

.method public getConnectionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/models/TagCheckResponse$Data;->connectionId:Ljava/lang/String;

    return-object p0
.end method

.method public setApdu(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Llv/nfc/reader/data/models/TagCheckResponse$Data;->apdu:Ljava/lang/String;

    return-void
.end method

.method public setConnectionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Llv/nfc/reader/data/models/TagCheckResponse$Data;->connectionId:Ljava/lang/String;

    return-void
.end method
