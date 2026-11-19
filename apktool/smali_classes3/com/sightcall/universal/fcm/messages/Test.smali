.class public Lcom/sightcall/universal/fcm/messages/Test;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY:Ljava/lang/String; = "test"


# instance fields
.field private text:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "content"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public text()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/fcm/messages/Test;->text:Ljava/lang/String;

    return-object p0
.end method

.method public title()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/fcm/messages/Test;->title:Ljava/lang/String;

    return-object p0
.end method
