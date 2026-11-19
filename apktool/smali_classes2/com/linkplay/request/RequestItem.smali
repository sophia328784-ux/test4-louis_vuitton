.class public Lcom/linkplay/request/RequestItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/request/RequestItem$Builder;
    }
.end annotation


# instance fields
.field private ip:Ljava/lang/String;

.field private security:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linkplay/request/RequestItem;->ip:Ljava/lang/String;

    iput-object p2, p0, Lcom/linkplay/request/RequestItem;->security:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/linkplay/request/RequestItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/request/RequestItem;->ip:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/request/RequestItem;->security:Ljava/lang/String;

    return-object p0
.end method
