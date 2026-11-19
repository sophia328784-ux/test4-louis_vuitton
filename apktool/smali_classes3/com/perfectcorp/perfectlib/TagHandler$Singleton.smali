.class abstract Lcom/perfectcorp/perfectlib/TagHandler$Singleton;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/TagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Singleton"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/TagHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/TagHandler;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/TagHandler;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/TagHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/TagHandler;

    return-void
.end method
