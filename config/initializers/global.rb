# Asset
APPROVED_FILE_TYPE = %w(
  image/png
  image/jpeg
  image/gif
  image/tiff
  image/bmp
  application/pdf
  application/msword
  application/vnd.ms-excel
  application/vnd.openxmlformats-officedocument.wordprocessingml.document
  application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
)

# Caching
EXPIRES_IN = 30.minutes
LONGER_EXPIRES_IN = 1.day

# How many months ago in order to save to MongoDB
MONGO_MONTHS = 3.months.ago

# Default picture
DEFAULT_AVATAR_PATH = "#{Rails.root}/public/images/default_avatar.png"

# Host for email
HOST = Rails.env.production? ? "www.rails4playground.com" : "localhost:5000"
FROM = "Jobline <info@jobline.com.sg>"
TO = Rails.env.production? ? "Jobline <info@jobline.com.sg>" : "Andre Joseph <tech3@jobline.com.sg>"

# Replace weird unicode characters like '∑', 'ß', 'Ø', 'ÿ', '§', 'ü' with '*'
REPLACED_CHARS = /\u2211|\u00df|\u00D8|\u00ff|\u27A2|\u00A7|\u2022|\u00B7|\uC39C|\uC3BC/
# REPLACED_CHARS = /\u2211|\u00df|\u00D8|\u00ff|\u27A2|\u00A7|\u2022|\u00B7|\u00B0|\u00BA|\uF0F0|(\*\t)/
# REPLACED_TAB = /\t/

PUBLIC_IMAGES_PATH = "#{Rails.root}/public/images"
PRIVATE_ASSETS_PATH = "#{Rails.root}/private/assets"