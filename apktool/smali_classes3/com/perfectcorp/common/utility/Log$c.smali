.class public abstract enum Lcom/perfectcorp/common/utility/Log$c;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/perfectcorp/common/utility/Log$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/utility/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/common/utility/Log$c;",
        ">;",
        "Lcom/perfectcorp/common/utility/Log$b;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/common/utility/Log$c;

.field public static final enum b:Lcom/perfectcorp/common/utility/Log$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/common/utility/m;

    invoke-direct {v0}, Lcom/perfectcorp/common/utility/m;-><init>()V

    sput-object v0, Lcom/perfectcorp/common/utility/Log$c;->a:Lcom/perfectcorp/common/utility/Log$c;

    new-instance v0, Lcom/perfectcorp/common/utility/n;

    invoke-direct {v0}, Lcom/perfectcorp/common/utility/n;-><init>()V

    sput-object v0, Lcom/perfectcorp/common/utility/Log$c;->b:Lcom/perfectcorp/common/utility/Log$c;

    return-void
.end method
