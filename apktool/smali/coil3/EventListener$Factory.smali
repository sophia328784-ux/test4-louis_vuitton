.class public interface abstract Lcoil3/EventListener$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00e6\u0080\u0001\u0018\u00002\u00020\u0001\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0002\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcoil3/EventListener$Factory;",
        "",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final i0:Lmt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmt;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lmt;-><init>(I)V

    sput-object v0, Lcoil3/EventListener$Factory;->i0:Lmt;

    return-void
.end method


# virtual methods
.method public abstract create()Lcoil3/EventListener$Companion$NONE$1;
.end method
