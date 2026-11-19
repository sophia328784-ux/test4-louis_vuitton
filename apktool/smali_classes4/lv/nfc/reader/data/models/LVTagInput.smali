.class public Llv/nfc/reader/data/models/LVTagInput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cxidAllowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private nfc:Landroid/nfc/tech/NfcV;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/nfc/tech/NfcV;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/nfc/tech/NfcV;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llv/nfc/reader/data/models/LVTagInput;->host:Ljava/lang/String;

    iput-object p2, p0, Llv/nfc/reader/data/models/LVTagInput;->nfc:Landroid/nfc/tech/NfcV;

    iput-object p3, p0, Llv/nfc/reader/data/models/LVTagInput;->headers:Ljava/util/Map;

    iput-object p4, p0, Llv/nfc/reader/data/models/LVTagInput;->cxidAllowList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCxidAllowList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Llv/nfc/reader/data/models/LVTagInput;->cxidAllowList:Ljava/util/List;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Llv/nfc/reader/data/models/LVTagInput;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/models/LVTagInput;->host:Ljava/lang/String;

    return-object p0
.end method

.method public getNfc()Landroid/nfc/tech/NfcV;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/models/LVTagInput;->nfc:Landroid/nfc/tech/NfcV;

    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Llv/nfc/reader/data/models/LVTagInput;->headers:Ljava/util/Map;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Llv/nfc/reader/data/models/LVTagInput;->host:Ljava/lang/String;

    return-void
.end method

.method public setNfc(Landroid/nfc/tech/NfcV;)V
    .locals 0

    iput-object p1, p0, Llv/nfc/reader/data/models/LVTagInput;->nfc:Landroid/nfc/tech/NfcV;

    return-void
.end method
