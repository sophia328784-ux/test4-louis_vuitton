.class public final Landroidx/media3/session/SessionCommands;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/SessionCommands$Builder;
    }
.end annotation


# static fields
.field public static final b:Landroidx/media3/session/SessionCommands;

.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/session/SessionCommands$Builder;

    invoke-direct {v0}, Landroidx/media3/session/SessionCommands$Builder;-><init>()V

    new-instance v1, Landroidx/media3/session/SessionCommands;

    iget-object v0, v0, Landroidx/media3/session/SessionCommands$Builder;->a:Ljava/util/HashSet;

    invoke-direct {v1, v0}, Landroidx/media3/session/SessionCommands;-><init>(Ljava/util/HashSet;)V

    sput-object v1, Landroidx/media3/session/SessionCommands;->b:Landroidx/media3/session/SessionCommands;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/16 v0, 0x24

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionCommands;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->s(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/SessionCommands;->a:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommands;
    .locals 4

    sget-object v0, Landroidx/media3/session/SessionCommands;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Missing commands. Creating an empty SessionCommands"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    sget-object p0, Landroidx/media3/session/SessionCommands;->b:Landroidx/media3/session/SessionCommands;

    return-object p0

    :cond_0
    new-instance v0, Landroidx/media3/session/SessionCommands$Builder;

    invoke-direct {v0}, Landroidx/media3/session/SessionCommands$Builder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Landroidx/media3/session/SessionCommands$Builder;->a:Ljava/util/HashSet;

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Landroidx/media3/session/SessionCommand;->a(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommand;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Landroidx/media3/session/SessionCommands;

    invoke-direct {p0, v3}, Landroidx/media3/session/SessionCommands;-><init>(Ljava/util/HashSet;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/media3/session/SessionCommands;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroidx/media3/session/SessionCommands;

    iget-object p0, p0, Landroidx/media3/session/SessionCommands;->a:Lcom/google/common/collect/ImmutableSet;

    iget-object p1, p1, Landroidx/media3/session/SessionCommands;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/SessionCommands;->a:Lcom/google/common/collect/ImmutableSet;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
