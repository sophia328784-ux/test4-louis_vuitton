.class public Llv/nfc/reader/data/models/LVTagResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cxid:Ljava/lang/String;

.field private longSku:Ljava/lang/String;

.field private sku:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCxid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/models/LVTagResult;->cxid:Ljava/lang/String;

    return-object p0
.end method

.method public getLongSku()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/models/LVTagResult;->longSku:Ljava/lang/String;

    return-object p0
.end method

.method public getSku()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/models/LVTagResult;->sku:Ljava/lang/String;

    return-object p0
.end method
