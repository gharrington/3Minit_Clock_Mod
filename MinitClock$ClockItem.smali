.class Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;
.super Landroid/widget/TextView;
.source "MinitClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MinitClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClockItem"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private mCalendar:Ljava/util/Calendar;

.field private mGravity:I

.field private mHandler:Landroid/os/Handler;

.field private secondsUpdater:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MinitClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MinitClock;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "siz"    # I
    .param p4, "colo"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "idd"    # Ljava/lang/String;
    .param p7, "fDir"    # Ljava/lang/String;
    .param p8, "fName"    # Ljava/lang/String;
    .param p9, "gravity"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->this$0:Lcom/android/systemui/statusbar/policy/MinitClock;

    .line 160
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 155
    const/16 v1, 0x11

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->mGravity:I

    .line 156
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance v1, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->secondsUpdater:Ljava/lang/Runnable;

    .line 161
    int-to-float v1, p3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->setTextSize(F)V

    .line 162
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->setTextColor(I)V

    .line 164
    :try_start_0
    invoke-static {p7}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->id:Ljava/lang/String;

    .line 169
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    .local v0, "parm":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->setGravity(I)V

    .line 172
    return-void

    .line 165
    .end local v0    # "parm":Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->secondsUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->id:Ljava/lang/String;

    const-string v1, "ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->mCalendar:Ljava/util/Calendar;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->secondsUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->secondsUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method public update(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->id:Ljava/lang/String;

    const-string v1, "space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->id:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
