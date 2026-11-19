.class public abstract Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;
.end method
