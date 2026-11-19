.class final enum Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/nbslens/nbsnativecrashlib/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

.field public static final enum b:Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

.field public static final enum c:Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

.field private static final synthetic d:[Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;->a:Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

    new-instance v1, Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

    const-string v2, "HEAD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;->b:Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

    new-instance v2, Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

    const-string v3, "SECTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;->c:Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

    filled-new-array {v0, v1, v2}, [Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

    move-result-object v0

    sput-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;->d:[Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;
    .locals 1

    const-class v0, Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;
    .locals 1

    sget-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;->d:[Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

    invoke-virtual {v0}, [Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/nbslens/nbsnativecrashlib/m$b;

    return-object v0
.end method
