.class public interface abstract Lcom/perfectcorp/uma/countly/d$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/uma/countly/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/uma/countly/d$c$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/uma/countly/d$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/uma/countly/d$c$a;

    invoke-direct {v0}, Lcom/perfectcorp/uma/countly/d$c$a;-><init>()V

    sput-object v0, Lcom/perfectcorp/uma/countly/d$c;->a:Lcom/perfectcorp/uma/countly/d$c$a;

    return-void
.end method
