.class public Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->value:Ljava/lang/String;

    return-void
.end method
