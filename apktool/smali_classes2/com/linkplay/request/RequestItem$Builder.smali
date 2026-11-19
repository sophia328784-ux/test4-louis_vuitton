.class public Lcom/linkplay/request/RequestItem$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/request/RequestItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private ip:Ljava/lang/String;

.field private security:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/linkplay/request/RequestItem;
    .locals 3

    new-instance v0, Lcom/linkplay/request/RequestItem;

    iget-object v1, p0, Lcom/linkplay/request/RequestItem$Builder;->ip:Ljava/lang/String;

    iget-object p0, p0, Lcom/linkplay/request/RequestItem$Builder;->security:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/linkplay/request/RequestItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public ip(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/request/RequestItem$Builder;->ip:Ljava/lang/String;

    return-object p0
.end method

.method public security(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/request/RequestItem$Builder;->security:Ljava/lang/String;

    return-object p0
.end method
