.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$BYTE;
.super Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BYTE"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$BYTE;",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit;",
        "()V",
        "toByte",
        "",
        "value",
        "",
        "",
        "toKB",
        "toMB",
        "koom-java-leak_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$BYTE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$BYTE;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$BYTE;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$BYTE;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$BYTE;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public toByte(I)F
    .locals 0

    int-to-float p0, p1

    return p0
.end method

.method public toByte(J)F
    .locals 0

    .line 2
    long-to-float p0, p1

    return p0
.end method

.method public toKB(I)F
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x44800000    # 1024.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public toKB(J)F
    .locals 0

    .line 5
    long-to-float p0, p1

    const/high16 p1, 0x44800000    # 1024.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public toMB(I)F
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x44800000    # 1024.0f

    div-float/2addr p0, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public toMB(J)F
    .locals 0

    .line 6
    long-to-float p0, p1

    const/high16 p1, 0x44800000    # 1024.0f

    div-float/2addr p0, p1

    div-float/2addr p0, p1

    return p0
.end method
