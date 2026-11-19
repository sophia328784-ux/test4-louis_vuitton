.class public Lcom/sightcall/universal/fcm/messages/Code$Created;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/fcm/messages/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Created"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "pincode-created"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/fcm/messages/Code$Created;->id:Ljava/lang/String;

    return-object p0
.end method
